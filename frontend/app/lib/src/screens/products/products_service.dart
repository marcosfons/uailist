import 'package:artemis/client.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/failures/failure.dart';
import 'package:uailist/src/core/logger/logger.dart';
import 'package:uailist/src/core/services/hasura/graphql_api.graphql.dart';

class ProductsService {
  final ArtemisClient _hasuraClient;
  final AppDatabase _appDatabase;

  ProductsService(this._hasuraClient, this._appDatabase);

  Stream<List<Product>> productsStream() =>
      _appDatabase.productDAO.watchProducts();

  Stream<List<Product>> productsSearchStream(Stream<String> searchStream) {
    return _appDatabase.productDAO.watchProducts().combineLatest(searchStream,
        (product, search) {
      return product.where((product) {
        return product.name.toLowerCase().contains(search.toLowerCase());
      }).toList();
    });
  }

  Future<Failure?> loadSupermarkets() async {
    try {
      final lastSupermarketUpdated =
          await _appDatabase.productDAO.getLastUpdatedAt();

      final response = await _hasuraClient.execute(
        GetSupermarketsQuery(
          variables: GetSupermarketsArguments(
            lastSyncedAt: lastSupermarketUpdated,
          ),
        ),
      );

      if (response.hasErrors || response.data == null) {
        getLogger().e(response.errors);
        return const UnknownFailure();
      }

      final updatedSupermarkets = response.data!.supermarket
          .map((supermarket) =>
              Supermarket.fromJson(supermarket.toJson()).toCompanion(false))
          .toList();

      await _appDatabase.supermarketDAO.insertSupermarkets(updatedSupermarkets);

      return null;
    } catch (e) {
      getLogger().e(e);
      return const UnknownFailure();
    }
  }

  Future<Failure?> createProduct(ProductsCompanion newProduct) {
    return _appDatabase.productDAO.insertProducts([newProduct]);
  }

  Future<Failure?> uploadNotSyncedProducts() async {
    final notSyncedProducts = await _appDatabase.productDAO.productsNotSynced();

    return notSyncedProducts.fold(
      (failure) => failure,
      (data) async {
        if (data.isEmpty) {
          return null;
        }

        final response = await _hasuraClient.execute(
          UpsertProductsMutation(
            variables: UpsertProductsArguments(
              products: data.map((products) {
                final json = products.toJson();

                json['image_url'] =
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ46bLvngduY5qw5I3jRjHjo5BSlF3GlKWZzg&usqp=CAU';
                json['updated_at'] = DateTime.now().toIso8601String();
                json['created_at'] = DateTime.now().toIso8601String();

                return ProductInsertInput.fromJson(json);
              }).toList(),
            ),
          ),
        );

        if (response.hasErrors) {
          print(response.errors);
          getLogger().e('An error has occurred while inserting product');
          return const UnknownFailure();
        }

        return null;
      },
    );
  }
}
