// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSupermarkets$QueryRoot$Supermarket
    _$GetSupermarkets$QueryRoot$SupermarketFromJson(
            Map<String, dynamic> json) =>
        GetSupermarkets$QueryRoot$Supermarket()
          ..uuid = fromGraphQLUuidToDartString(json['uuid'] as String)
          ..updatedAt =
              fromGraphQLTimestamptzToDartDateTime(json['updated_at'] as String)
          ..name = json['name'] as String
          ..latitude = fromGraphQLFloat8NullableToDartdoubleNullable(
              json['latitude'] as num?)
          ..longitude = fromGraphQLFloat8NullableToDartdoubleNullable(
              json['longitude'] as num?)
          ..imageUrl = json['image_url'] as String
          ..createdAt =
              fromGraphQLTimestamptzToDartDateTime(json['created_at'] as String)
          ..address = json['address'] as String;

Map<String, dynamic> _$GetSupermarkets$QueryRoot$SupermarketToJson(
        GetSupermarkets$QueryRoot$Supermarket instance) =>
    <String, dynamic>{
      'uuid': fromDartStringToGraphQLUuid(instance.uuid),
      'updated_at': fromDartDateTimeToGraphQLTimestamptz(instance.updatedAt),
      'name': instance.name,
      'latitude':
          fromDartdoubleNullableToGraphQLFloat8Nullable(instance.latitude),
      'longitude':
          fromDartdoubleNullableToGraphQLFloat8Nullable(instance.longitude),
      'image_url': instance.imageUrl,
      'created_at': fromDartDateTimeToGraphQLTimestamptz(instance.createdAt),
      'address': instance.address,
    };

GetSupermarkets$QueryRoot _$GetSupermarkets$QueryRootFromJson(
        Map<String, dynamic> json) =>
    GetSupermarkets$QueryRoot()
      ..supermarket = (json['supermarket'] as List<dynamic>)
          .map((e) => GetSupermarkets$QueryRoot$Supermarket.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetSupermarkets$QueryRootToJson(
        GetSupermarkets$QueryRoot instance) =>
    <String, dynamic>{
      'supermarket': instance.supermarket.map((e) => e.toJson()).toList(),
    };

UpsertSupermarkets$MutationRoot$SupermarketMutationResponse
    _$UpsertSupermarkets$MutationRoot$SupermarketMutationResponseFromJson(
            Map<String, dynamic> json) =>
        UpsertSupermarkets$MutationRoot$SupermarketMutationResponse()
          ..affectedRows = json['affected_rows'] as int;

Map<String, dynamic>
    _$UpsertSupermarkets$MutationRoot$SupermarketMutationResponseToJson(
            UpsertSupermarkets$MutationRoot$SupermarketMutationResponse
                instance) =>
        <String, dynamic>{
          'affected_rows': instance.affectedRows,
        };

UpsertSupermarkets$MutationRoot _$UpsertSupermarkets$MutationRootFromJson(
        Map<String, dynamic> json) =>
    UpsertSupermarkets$MutationRoot()
      ..insertSupermarket = json['insert_supermarket'] == null
          ? null
          : UpsertSupermarkets$MutationRoot$SupermarketMutationResponse
              .fromJson(json['insert_supermarket'] as Map<String, dynamic>);

Map<String, dynamic> _$UpsertSupermarkets$MutationRootToJson(
        UpsertSupermarkets$MutationRoot instance) =>
    <String, dynamic>{
      'insert_supermarket': instance.insertSupermarket?.toJson(),
    };

SupermarketInsertInput _$SupermarketInsertInputFromJson(
        Map<String, dynamic> json) =>
    SupermarketInsertInput(
      address: json['address'] as String?,
      createdAt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['created_at'] as String?),
      createdByUserUuid: fromGraphQLUuidNullableToDartStringNullable(
          json['created_by_user_uuid'] as String?),
      imageUrl: json['image_url'] as String?,
      latitude: fromGraphQLFloat8NullableToDartdoubleNullable(
          json['latitude'] as num?),
      longitude: fromGraphQLFloat8NullableToDartdoubleNullable(
          json['longitude'] as num?),
      name: json['name'] as String?,
      updatedAt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['updated_at'] as String?),
      uuid:
          fromGraphQLUuidNullableToDartStringNullable(json['uuid'] as String?),
    );

Map<String, dynamic> _$SupermarketInsertInputToJson(
        SupermarketInsertInput instance) =>
    <String, dynamic>{
      'address': instance.address,
      'created_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.createdAt),
      'created_by_user_uuid': fromDartStringNullableToGraphQLUuidNullable(
          instance.createdByUserUuid),
      'image_url': instance.imageUrl,
      'latitude':
          fromDartdoubleNullableToGraphQLFloat8Nullable(instance.latitude),
      'longitude':
          fromDartdoubleNullableToGraphQLFloat8Nullable(instance.longitude),
      'name': instance.name,
      'updated_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.updatedAt),
      'uuid': fromDartStringNullableToGraphQLUuidNullable(instance.uuid),
    };

AppChangeSupermarketImageUrl$MutationRoot$Supermarket
    _$AppChangeSupermarketImageUrl$MutationRoot$SupermarketFromJson(
            Map<String, dynamic> json) =>
        AppChangeSupermarketImageUrl$MutationRoot$Supermarket()
          ..imageUrl = json['image_url'] as String;

Map<String, dynamic>
    _$AppChangeSupermarketImageUrl$MutationRoot$SupermarketToJson(
            AppChangeSupermarketImageUrl$MutationRoot$Supermarket instance) =>
        <String, dynamic>{
          'image_url': instance.imageUrl,
        };

AppChangeSupermarketImageUrl$MutationRoot
    _$AppChangeSupermarketImageUrl$MutationRootFromJson(
            Map<String, dynamic> json) =>
        AppChangeSupermarketImageUrl$MutationRoot()
          ..updateSupermarketByPk = json['update_supermarket_by_pk'] == null
              ? null
              : AppChangeSupermarketImageUrl$MutationRoot$Supermarket.fromJson(
                  json['update_supermarket_by_pk'] as Map<String, dynamic>);

Map<String, dynamic> _$AppChangeSupermarketImageUrl$MutationRootToJson(
        AppChangeSupermarketImageUrl$MutationRoot instance) =>
    <String, dynamic>{
      'update_supermarket_by_pk': instance.updateSupermarketByPk?.toJson(),
    };

AppDeleteUser$MutationRoot$Users _$AppDeleteUser$MutationRoot$UsersFromJson(
        Map<String, dynamic> json) =>
    AppDeleteUser$MutationRoot$Users()
      ..id = fromGraphQLUuidToDartString(json['id'] as String);

Map<String, dynamic> _$AppDeleteUser$MutationRoot$UsersToJson(
        AppDeleteUser$MutationRoot$Users instance) =>
    <String, dynamic>{
      'id': fromDartStringToGraphQLUuid(instance.id),
    };

AppDeleteUser$MutationRoot _$AppDeleteUser$MutationRootFromJson(
        Map<String, dynamic> json) =>
    AppDeleteUser$MutationRoot()
      ..deleteUser = json['deleteUser'] == null
          ? null
          : AppDeleteUser$MutationRoot$Users.fromJson(
              json['deleteUser'] as Map<String, dynamic>);

Map<String, dynamic> _$AppDeleteUser$MutationRootToJson(
        AppDeleteUser$MutationRoot instance) =>
    <String, dynamic>{
      'deleteUser': instance.deleteUser?.toJson(),
    };

AppChangeAvatarUrl$MutationRoot$Users
    _$AppChangeAvatarUrl$MutationRoot$UsersFromJson(
            Map<String, dynamic> json) =>
        AppChangeAvatarUrl$MutationRoot$Users()
          ..id = fromGraphQLUuidToDartString(json['id'] as String)
          ..displayName = json['displayName'] as String
          ..avatarUrl = json['avatarUrl'] as String
          ..updatedAt =
              fromGraphQLTimestamptzToDartDateTime(json['updatedAt'] as String);

Map<String, dynamic> _$AppChangeAvatarUrl$MutationRoot$UsersToJson(
        AppChangeAvatarUrl$MutationRoot$Users instance) =>
    <String, dynamic>{
      'id': fromDartStringToGraphQLUuid(instance.id),
      'displayName': instance.displayName,
      'avatarUrl': instance.avatarUrl,
      'updatedAt': fromDartDateTimeToGraphQLTimestamptz(instance.updatedAt),
    };

AppChangeAvatarUrl$MutationRoot _$AppChangeAvatarUrl$MutationRootFromJson(
        Map<String, dynamic> json) =>
    AppChangeAvatarUrl$MutationRoot()
      ..updateUser = json['updateUser'] == null
          ? null
          : AppChangeAvatarUrl$MutationRoot$Users.fromJson(
              json['updateUser'] as Map<String, dynamic>);

Map<String, dynamic> _$AppChangeAvatarUrl$MutationRootToJson(
        AppChangeAvatarUrl$MutationRoot instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser?.toJson(),
    };

AppChangeUserName$MutationRoot$Users
    _$AppChangeUserName$MutationRoot$UsersFromJson(Map<String, dynamic> json) =>
        AppChangeUserName$MutationRoot$Users()
          ..id = fromGraphQLUuidToDartString(json['id'] as String)
          ..displayName = json['displayName'] as String
          ..avatarUrl = json['avatarUrl'] as String
          ..updatedAt =
              fromGraphQLTimestamptzToDartDateTime(json['updatedAt'] as String);

Map<String, dynamic> _$AppChangeUserName$MutationRoot$UsersToJson(
        AppChangeUserName$MutationRoot$Users instance) =>
    <String, dynamic>{
      'id': fromDartStringToGraphQLUuid(instance.id),
      'displayName': instance.displayName,
      'avatarUrl': instance.avatarUrl,
      'updatedAt': fromDartDateTimeToGraphQLTimestamptz(instance.updatedAt),
    };

AppChangeUserName$MutationRoot _$AppChangeUserName$MutationRootFromJson(
        Map<String, dynamic> json) =>
    AppChangeUserName$MutationRoot()
      ..updateUser = json['updateUser'] == null
          ? null
          : AppChangeUserName$MutationRoot$Users.fromJson(
              json['updateUser'] as Map<String, dynamic>);

Map<String, dynamic> _$AppChangeUserName$MutationRootToJson(
        AppChangeUserName$MutationRoot instance) =>
    <String, dynamic>{
      'updateUser': instance.updateUser?.toJson(),
    };

GetProducts$QueryRoot$Product _$GetProducts$QueryRoot$ProductFromJson(
        Map<String, dynamic> json) =>
    GetProducts$QueryRoot$Product()
      ..uuid = fromGraphQLUuidToDartString(json['uuid'] as String)
      ..updatedAt =
          fromGraphQLTimestamptzToDartDateTime(json['updated_at'] as String)
      ..name = json['name'] as String
      ..imageUrl = json['image_url'] as String
      ..createdAt =
          fromGraphQLTimestamptzToDartDateTime(json['created_at'] as String)
      ..weight =
          fromGraphQLFloat8NullableToDartdoubleNullable(json['weight'] as num?)
      ..createdByUserUuid = fromGraphQLUuidNullableToDartStringNullable(
          json['created_by_user_uuid'] as String?)
      ..brand = json['brand'] as String?;

Map<String, dynamic> _$GetProducts$QueryRoot$ProductToJson(
        GetProducts$QueryRoot$Product instance) =>
    <String, dynamic>{
      'uuid': fromDartStringToGraphQLUuid(instance.uuid),
      'updated_at': fromDartDateTimeToGraphQLTimestamptz(instance.updatedAt),
      'name': instance.name,
      'image_url': instance.imageUrl,
      'created_at': fromDartDateTimeToGraphQLTimestamptz(instance.createdAt),
      'weight': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.weight),
      'created_by_user_uuid': fromDartStringNullableToGraphQLUuidNullable(
          instance.createdByUserUuid),
      'brand': instance.brand,
    };

GetProducts$QueryRoot _$GetProducts$QueryRootFromJson(
        Map<String, dynamic> json) =>
    GetProducts$QueryRoot()
      ..product = (json['product'] as List<dynamic>)
          .map((e) =>
              GetProducts$QueryRoot$Product.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetProducts$QueryRootToJson(
        GetProducts$QueryRoot instance) =>
    <String, dynamic>{
      'product': instance.product.map((e) => e.toJson()).toList(),
    };

UpsertProducts$MutationRoot$ProductMutationResponse
    _$UpsertProducts$MutationRoot$ProductMutationResponseFromJson(
            Map<String, dynamic> json) =>
        UpsertProducts$MutationRoot$ProductMutationResponse()
          ..affectedRows = json['affected_rows'] as int;

Map<String, dynamic>
    _$UpsertProducts$MutationRoot$ProductMutationResponseToJson(
            UpsertProducts$MutationRoot$ProductMutationResponse instance) =>
        <String, dynamic>{
          'affected_rows': instance.affectedRows,
        };

UpsertProducts$MutationRoot _$UpsertProducts$MutationRootFromJson(
        Map<String, dynamic> json) =>
    UpsertProducts$MutationRoot()
      ..insertProduct = json['insert_product'] == null
          ? null
          : UpsertProducts$MutationRoot$ProductMutationResponse.fromJson(
              json['insert_product'] as Map<String, dynamic>);

Map<String, dynamic> _$UpsertProducts$MutationRootToJson(
        UpsertProducts$MutationRoot instance) =>
    <String, dynamic>{
      'insert_product': instance.insertProduct?.toJson(),
    };

ProductInsertInput _$ProductInsertInputFromJson(Map<String, dynamic> json) =>
    ProductInsertInput(
      brand: json['brand'] as String?,
      createdAt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['created_at'] as String?),
      createdByUserUuid: fromGraphQLUuidNullableToDartStringNullable(
          json['created_by_user_uuid'] as String?),
      imageUrl: json['image_url'] as String?,
      name: json['name'] as String?,
      updatedAt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['updated_at'] as String?),
      uuid:
          fromGraphQLUuidNullableToDartStringNullable(json['uuid'] as String?),
      weight:
          fromGraphQLFloat8NullableToDartdoubleNullable(json['weight'] as num?),
    );

Map<String, dynamic> _$ProductInsertInputToJson(ProductInsertInput instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'created_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.createdAt),
      'created_by_user_uuid': fromDartStringNullableToGraphQLUuidNullable(
          instance.createdByUserUuid),
      'image_url': instance.imageUrl,
      'name': instance.name,
      'updated_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.updatedAt),
      'uuid': fromDartStringNullableToGraphQLUuidNullable(instance.uuid),
      'weight': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.weight),
    };

GetSupermarketsArguments _$GetSupermarketsArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetSupermarketsArguments(
      lastSyncedAt:
          fromGraphQLTimestamptzToDartDateTime(json['lastSyncedAt'] as String),
    );

Map<String, dynamic> _$GetSupermarketsArgumentsToJson(
        GetSupermarketsArguments instance) =>
    <String, dynamic>{
      'lastSyncedAt':
          fromDartDateTimeToGraphQLTimestamptz(instance.lastSyncedAt),
    };

UpsertSupermarketsArguments _$UpsertSupermarketsArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpsertSupermarketsArguments(
      supermarkets: (json['supermarkets'] as List<dynamic>)
          .map(
              (e) => SupermarketInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpsertSupermarketsArgumentsToJson(
        UpsertSupermarketsArguments instance) =>
    <String, dynamic>{
      'supermarkets': instance.supermarkets.map((e) => e.toJson()).toList(),
    };

AppChangeSupermarketImageUrlArguments
    _$AppChangeSupermarketImageUrlArgumentsFromJson(
            Map<String, dynamic> json) =>
        AppChangeSupermarketImageUrlArguments(
          uuid: fromGraphQLUuidToDartString(json['uuid'] as String),
          newImageUrl: json['newImageUrl'] as String,
        );

Map<String, dynamic> _$AppChangeSupermarketImageUrlArgumentsToJson(
        AppChangeSupermarketImageUrlArguments instance) =>
    <String, dynamic>{
      'uuid': fromDartStringToGraphQLUuid(instance.uuid),
      'newImageUrl': instance.newImageUrl,
    };

AppDeleteUserArguments _$AppDeleteUserArgumentsFromJson(
        Map<String, dynamic> json) =>
    AppDeleteUserArguments(
      userId: fromGraphQLUuidToDartString(json['userId'] as String),
    );

Map<String, dynamic> _$AppDeleteUserArgumentsToJson(
        AppDeleteUserArguments instance) =>
    <String, dynamic>{
      'userId': fromDartStringToGraphQLUuid(instance.userId),
    };

AppChangeAvatarUrlArguments _$AppChangeAvatarUrlArgumentsFromJson(
        Map<String, dynamic> json) =>
    AppChangeAvatarUrlArguments(
      userId: fromGraphQLUuidToDartString(json['userId'] as String),
      avatarUrl: json['avatarUrl'] as String,
    );

Map<String, dynamic> _$AppChangeAvatarUrlArgumentsToJson(
        AppChangeAvatarUrlArguments instance) =>
    <String, dynamic>{
      'userId': fromDartStringToGraphQLUuid(instance.userId),
      'avatarUrl': instance.avatarUrl,
    };

AppChangeUserNameArguments _$AppChangeUserNameArgumentsFromJson(
        Map<String, dynamic> json) =>
    AppChangeUserNameArguments(
      userId: fromGraphQLUuidToDartString(json['userId'] as String),
      name: json['name'] as String,
    );

Map<String, dynamic> _$AppChangeUserNameArgumentsToJson(
        AppChangeUserNameArguments instance) =>
    <String, dynamic>{
      'userId': fromDartStringToGraphQLUuid(instance.userId),
      'name': instance.name,
    };

GetProductsArguments _$GetProductsArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetProductsArguments(
      lastSyncedAt:
          fromGraphQLTimestamptzToDartDateTime(json['lastSyncedAt'] as String),
    );

Map<String, dynamic> _$GetProductsArgumentsToJson(
        GetProductsArguments instance) =>
    <String, dynamic>{
      'lastSyncedAt':
          fromDartDateTimeToGraphQLTimestamptz(instance.lastSyncedAt),
    };

UpsertProductsArguments _$UpsertProductsArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpsertProductsArguments(
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpsertProductsArgumentsToJson(
        UpsertProductsArguments instance) =>
    <String, dynamic>{
      'products': instance.products.map((e) => e.toJson()).toList(),
    };
