// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:uailist/src/core/services/hasura/parsers/custom_citext_parser.dart';
import 'package:uailist/src/core/services/hasura/parsers/custom_double_parser.dart';
import 'package:uailist/src/core/services/hasura/parsers/custom_timestamptz_parser.dart';
import 'package:uailist/src/core/services/hasura/parsers/custom_uuid_parser.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class AppDeleteUser$MutationRoot$Users extends JsonSerializable
    with EquatableMixin {
  AppDeleteUser$MutationRoot$Users();

  factory AppDeleteUser$MutationRoot$Users.fromJson(
          Map<String, dynamic> json) =>
      _$AppDeleteUser$MutationRoot$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$AppDeleteUser$MutationRoot$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AppDeleteUser$MutationRoot extends JsonSerializable with EquatableMixin {
  AppDeleteUser$MutationRoot();

  factory AppDeleteUser$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$AppDeleteUser$MutationRootFromJson(json);

  AppDeleteUser$MutationRoot$Users? deleteUser;

  @override
  List<Object?> get props => [deleteUser];
  @override
  Map<String, dynamic> toJson() => _$AppDeleteUser$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AppChangeAvatarUrl$MutationRoot$Users extends JsonSerializable
    with EquatableMixin {
  AppChangeAvatarUrl$MutationRoot$Users();

  factory AppChangeAvatarUrl$MutationRoot$Users.fromJson(
          Map<String, dynamic> json) =>
      _$AppChangeAvatarUrl$MutationRoot$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String id;

  late String displayName;

  late String avatarUrl;

  @JsonKey(
      fromJson: fromGraphQLTimestamptzToDartDateTime,
      toJson: fromDartDateTimeToGraphQLTimestamptz)
  late DateTime updatedAt;

  @override
  List<Object?> get props => [id, displayName, avatarUrl, updatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$AppChangeAvatarUrl$MutationRoot$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AppChangeAvatarUrl$MutationRoot extends JsonSerializable
    with EquatableMixin {
  AppChangeAvatarUrl$MutationRoot();

  factory AppChangeAvatarUrl$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$AppChangeAvatarUrl$MutationRootFromJson(json);

  AppChangeAvatarUrl$MutationRoot$Users? updateUser;

  @override
  List<Object?> get props => [updateUser];
  @override
  Map<String, dynamic> toJson() =>
      _$AppChangeAvatarUrl$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AppChangeUserName$MutationRoot$Users extends JsonSerializable
    with EquatableMixin {
  AppChangeUserName$MutationRoot$Users();

  factory AppChangeUserName$MutationRoot$Users.fromJson(
          Map<String, dynamic> json) =>
      _$AppChangeUserName$MutationRoot$UsersFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String id;

  late String displayName;

  late String avatarUrl;

  @JsonKey(
      fromJson: fromGraphQLTimestamptzToDartDateTime,
      toJson: fromDartDateTimeToGraphQLTimestamptz)
  late DateTime updatedAt;

  @override
  List<Object?> get props => [id, displayName, avatarUrl, updatedAt];
  @override
  Map<String, dynamic> toJson() =>
      _$AppChangeUserName$MutationRoot$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AppChangeUserName$MutationRoot extends JsonSerializable
    with EquatableMixin {
  AppChangeUserName$MutationRoot();

  factory AppChangeUserName$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$AppChangeUserName$MutationRootFromJson(json);

  AppChangeUserName$MutationRoot$Users? updateUser;

  @override
  List<Object?> get props => [updateUser];
  @override
  Map<String, dynamic> toJson() => _$AppChangeUserName$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetProducts$QueryRoot$Product extends JsonSerializable
    with EquatableMixin {
  GetProducts$QueryRoot$Product();

  factory GetProducts$QueryRoot$Product.fromJson(Map<String, dynamic> json) =>
      _$GetProducts$QueryRoot$ProductFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String uuid;

  @JsonKey(
      name: 'updated_at',
      fromJson: fromGraphQLTimestamptzToDartDateTime,
      toJson: fromDartDateTimeToGraphQLTimestamptz)
  late DateTime updatedAt;

  late String name;

  @JsonKey(name: 'image_url')
  late String imageUrl;

  @JsonKey(
      name: 'created_at',
      fromJson: fromGraphQLTimestamptzToDartDateTime,
      toJson: fromDartDateTimeToGraphQLTimestamptz)
  late DateTime createdAt;

  @JsonKey(
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? weight;

  @JsonKey(
      name: 'created_by_user_uuid',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? createdByUserUuid;

  String? brand;

  @override
  List<Object?> get props => [
        uuid,
        updatedAt,
        name,
        imageUrl,
        createdAt,
        weight,
        createdByUserUuid,
        brand
      ];
  @override
  Map<String, dynamic> toJson() => _$GetProducts$QueryRoot$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetProducts$QueryRoot extends JsonSerializable with EquatableMixin {
  GetProducts$QueryRoot();

  factory GetProducts$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$GetProducts$QueryRootFromJson(json);

  late List<GetProducts$QueryRoot$Product> product;

  @override
  List<Object?> get props => [product];
  @override
  Map<String, dynamic> toJson() => _$GetProducts$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpsertProducts$MutationRoot$ProductMutationResponse
    extends JsonSerializable with EquatableMixin {
  UpsertProducts$MutationRoot$ProductMutationResponse();

  factory UpsertProducts$MutationRoot$ProductMutationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpsertProducts$MutationRoot$ProductMutationResponseFromJson(json);

  @JsonKey(name: 'affected_rows')
  late int affectedRows;

  @override
  List<Object?> get props => [affectedRows];
  @override
  Map<String, dynamic> toJson() =>
      _$UpsertProducts$MutationRoot$ProductMutationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpsertProducts$MutationRoot extends JsonSerializable with EquatableMixin {
  UpsertProducts$MutationRoot();

  factory UpsertProducts$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$UpsertProducts$MutationRootFromJson(json);

  @JsonKey(name: 'insert_product')
  UpsertProducts$MutationRoot$ProductMutationResponse? insertProduct;

  @override
  List<Object?> get props => [insertProduct];
  @override
  Map<String, dynamic> toJson() => _$UpsertProducts$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductInsertInput extends JsonSerializable with EquatableMixin {
  ProductInsertInput({
    this.brand,
    this.createdAt,
    this.createdByUserUuid,
    this.imageUrl,
    this.name,
    this.productBuyLists,
    this.updatedAt,
    this.uuid,
    this.weight,
  });

  factory ProductInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ProductInsertInputFromJson(json);

  String? brand;

  @JsonKey(
      name: 'created_at',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? createdAt;

  @JsonKey(
      name: 'created_by_user_uuid',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? createdByUserUuid;

  @JsonKey(name: 'image_url')
  String? imageUrl;

  String? name;

  @JsonKey(name: 'product_buy_lists')
  ProductBuyListArrRelInsertInput? productBuyLists;

  @JsonKey(
      name: 'updated_at',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? updatedAt;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? uuid;

  @JsonKey(
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? weight;

  @override
  List<Object?> get props => [
        brand,
        createdAt,
        createdByUserUuid,
        imageUrl,
        name,
        productBuyLists,
        updatedAt,
        uuid,
        weight
      ];
  @override
  Map<String, dynamic> toJson() => _$ProductInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBuyListArrRelInsertInput extends JsonSerializable
    with EquatableMixin {
  ProductBuyListArrRelInsertInput({
    required this.data,
    this.onConflict,
  });

  factory ProductBuyListArrRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ProductBuyListArrRelInsertInputFromJson(json);

  late List<ProductBuyListInsertInput> data;

  @JsonKey(name: 'on_conflict')
  ProductBuyListOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductBuyListArrRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBuyListInsertInput extends JsonSerializable with EquatableMixin {
  ProductBuyListInsertInput({
    this.bought,
    this.buyList,
    this.buyListUuid,
    this.createdAt,
    this.priceUuid,
    this.product,
    this.productUuid,
    this.quantity,
    this.updatedAt,
    this.uuid,
  });

  factory ProductBuyListInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ProductBuyListInsertInputFromJson(json);

  bool? bought;

  @JsonKey(name: 'buy_list')
  BuyListObjRelInsertInput? buyList;

  @JsonKey(
      name: 'buy_list_uuid',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? buyListUuid;

  @JsonKey(
      name: 'created_at',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? createdAt;

  @JsonKey(
      name: 'price_uuid',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? priceUuid;

  ProductObjRelInsertInput? product;

  @JsonKey(
      name: 'product_uuid',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? productUuid;

  int? quantity;

  @JsonKey(
      name: 'updated_at',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? updatedAt;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? uuid;

  @override
  List<Object?> get props => [
        bought,
        buyList,
        buyListUuid,
        createdAt,
        priceUuid,
        product,
        productUuid,
        quantity,
        updatedAt,
        uuid
      ];
  @override
  Map<String, dynamic> toJson() => _$ProductBuyListInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BuyListObjRelInsertInput extends JsonSerializable with EquatableMixin {
  BuyListObjRelInsertInput({
    required this.data,
    this.onConflict,
  });

  factory BuyListObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$BuyListObjRelInsertInputFromJson(json);

  late BuyListInsertInput data;

  @JsonKey(name: 'on_conflict')
  BuyListOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$BuyListObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BuyListInsertInput extends JsonSerializable with EquatableMixin {
  BuyListInsertInput({
    this.createdAt,
    this.name,
    this.productBuyLists,
    this.updatedAt,
    this.uuid,
  });

  factory BuyListInsertInput.fromJson(Map<String, dynamic> json) =>
      _$BuyListInsertInputFromJson(json);

  @JsonKey(
      name: 'created_at',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? createdAt;

  String? name;

  @JsonKey(name: 'product_buy_lists')
  ProductBuyListArrRelInsertInput? productBuyLists;

  @JsonKey(
      name: 'updated_at',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? updatedAt;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? uuid;

  @override
  List<Object?> get props =>
      [createdAt, name, productBuyLists, updatedAt, uuid];
  @override
  Map<String, dynamic> toJson() => _$BuyListInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BuyListOnConflict extends JsonSerializable with EquatableMixin {
  BuyListOnConflict({
    required this.constraint,
    required this.updateColumns,
    this.where,
  });

  factory BuyListOnConflict.fromJson(Map<String, dynamic> json) =>
      _$BuyListOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: BuyListConstraint.artemisUnknown)
  late BuyListConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: BuyListUpdateColumn.artemisUnknown)
  late List<BuyListUpdateColumn> updateColumns;

  BuyListBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$BuyListOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BuyListBoolExp extends JsonSerializable with EquatableMixin {
  BuyListBoolExp({
    this.$and,
    this.$not,
    this.$or,
    this.createdAt,
    this.name,
    this.productBuyLists,
    this.productBuyListsAggregate,
    this.updatedAt,
    this.user,
    this.userUuid,
    this.uuid,
  });

  factory BuyListBoolExp.fromJson(Map<String, dynamic> json) =>
      _$BuyListBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<BuyListBoolExp>? $and;

  @JsonKey(name: '_not')
  BuyListBoolExp? $not;

  @JsonKey(name: '_or')
  List<BuyListBoolExp>? $or;

  @JsonKey(name: 'created_at')
  TimestamptzComparisonExp? createdAt;

  StringComparisonExp? name;

  @JsonKey(name: 'product_buy_lists')
  ProductBuyListBoolExp? productBuyLists;

  @JsonKey(name: 'product_buy_lists_aggregate')
  ProductBuyListAggregateBoolExp? productBuyListsAggregate;

  @JsonKey(name: 'updated_at')
  TimestamptzComparisonExp? updatedAt;

  UsersBoolExp? user;

  @JsonKey(name: 'user_uuid')
  UuidComparisonExp? userUuid;

  UuidComparisonExp? uuid;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        createdAt,
        name,
        productBuyLists,
        productBuyListsAggregate,
        updatedAt,
        user,
        userUuid,
        uuid
      ];
  @override
  Map<String, dynamic> toJson() => _$BuyListBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TimestamptzComparisonExp extends JsonSerializable with EquatableMixin {
  TimestamptzComparisonExp({
    this.$eq,
    this.$gt,
    this.$gte,
    this.$in,
    this.$isNull,
    this.$lt,
    this.$lte,
    this.$neq,
    this.$nin,
  });

  factory TimestamptzComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$TimestamptzComparisonExpFromJson(json);

  @JsonKey(
      name: '_eq',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? $eq;

  @JsonKey(
      name: '_gt',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? $gt;

  @JsonKey(
      name: '_gte',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? $gte;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableTimestamptzToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableTimestamptz)
  List<DateTime>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(
      name: '_lt',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? $lt;

  @JsonKey(
      name: '_lte',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? $lte;

  @JsonKey(
      name: '_neq',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? $neq;

  @JsonKey(
      name: '_nin',
      fromJson: fromGraphQLListNullableTimestamptzToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableTimestamptz)
  List<DateTime>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$TimestamptzComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StringComparisonExp extends JsonSerializable with EquatableMixin {
  StringComparisonExp({
    this.$eq,
    this.$gt,
    this.$gte,
    this.$ilike,
    this.$in,
    this.$iregex,
    this.$isNull,
    this.$like,
    this.$lt,
    this.$lte,
    this.$neq,
    this.$nilike,
    this.$nin,
    this.$niregex,
    this.$nlike,
    this.$nregex,
    this.$nsimilar,
    this.$regex,
    this.$similar,
  });

  factory StringComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$StringComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  String? $eq;

  @JsonKey(name: '_gt')
  String? $gt;

  @JsonKey(name: '_gte')
  String? $gte;

  @JsonKey(name: '_ilike')
  String? $ilike;

  @JsonKey(name: '_in')
  List<String>? $in;

  @JsonKey(name: '_iregex')
  String? $iregex;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_like')
  String? $like;

  @JsonKey(name: '_lt')
  String? $lt;

  @JsonKey(name: '_lte')
  String? $lte;

  @JsonKey(name: '_neq')
  String? $neq;

  @JsonKey(name: '_nilike')
  String? $nilike;

  @JsonKey(name: '_nin')
  List<String>? $nin;

  @JsonKey(name: '_niregex')
  String? $niregex;

  @JsonKey(name: '_nlike')
  String? $nlike;

  @JsonKey(name: '_nregex')
  String? $nregex;

  @JsonKey(name: '_nsimilar')
  String? $nsimilar;

  @JsonKey(name: '_regex')
  String? $regex;

  @JsonKey(name: '_similar')
  String? $similar;

  @override
  List<Object?> get props => [
        $eq,
        $gt,
        $gte,
        $ilike,
        $in,
        $iregex,
        $isNull,
        $like,
        $lt,
        $lte,
        $neq,
        $nilike,
        $nin,
        $niregex,
        $nlike,
        $nregex,
        $nsimilar,
        $regex,
        $similar
      ];
  @override
  Map<String, dynamic> toJson() => _$StringComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBuyListBoolExp extends JsonSerializable with EquatableMixin {
  ProductBuyListBoolExp({
    this.$and,
    this.$not,
    this.$or,
    this.bought,
    this.buyList,
    this.buyListUuid,
    this.createdAt,
    this.priceUuid,
    this.product,
    this.productUuid,
    this.quantity,
    this.updatedAt,
    this.uuid,
  });

  factory ProductBuyListBoolExp.fromJson(Map<String, dynamic> json) =>
      _$ProductBuyListBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<ProductBuyListBoolExp>? $and;

  @JsonKey(name: '_not')
  ProductBuyListBoolExp? $not;

  @JsonKey(name: '_or')
  List<ProductBuyListBoolExp>? $or;

  BooleanComparisonExp? bought;

  @JsonKey(name: 'buy_list')
  BuyListBoolExp? buyList;

  @JsonKey(name: 'buy_list_uuid')
  UuidComparisonExp? buyListUuid;

  @JsonKey(name: 'created_at')
  TimestamptzComparisonExp? createdAt;

  @JsonKey(name: 'price_uuid')
  UuidComparisonExp? priceUuid;

  ProductBoolExp? product;

  @JsonKey(name: 'product_uuid')
  UuidComparisonExp? productUuid;

  IntComparisonExp? quantity;

  @JsonKey(name: 'updated_at')
  TimestamptzComparisonExp? updatedAt;

  UuidComparisonExp? uuid;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        bought,
        buyList,
        buyListUuid,
        createdAt,
        priceUuid,
        product,
        productUuid,
        quantity,
        updatedAt,
        uuid
      ];
  @override
  Map<String, dynamic> toJson() => _$ProductBuyListBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BooleanComparisonExp extends JsonSerializable with EquatableMixin {
  BooleanComparisonExp({
    this.$eq,
    this.$gt,
    this.$gte,
    this.$in,
    this.$isNull,
    this.$lt,
    this.$lte,
    this.$neq,
    this.$nin,
  });

  factory BooleanComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$BooleanComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  bool? $eq;

  @JsonKey(name: '_gt')
  bool? $gt;

  @JsonKey(name: '_gte')
  bool? $gte;

  @JsonKey(name: '_in')
  List<bool>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  bool? $lt;

  @JsonKey(name: '_lte')
  bool? $lte;

  @JsonKey(name: '_neq')
  bool? $neq;

  @JsonKey(name: '_nin')
  List<bool>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$BooleanComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UuidComparisonExp extends JsonSerializable with EquatableMixin {
  UuidComparisonExp({
    this.$eq,
    this.$gt,
    this.$gte,
    this.$in,
    this.$isNull,
    this.$lt,
    this.$lte,
    this.$neq,
    this.$nin,
  });

  factory UuidComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$UuidComparisonExpFromJson(json);

  @JsonKey(
      name: '_eq',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? $eq;

  @JsonKey(
      name: '_gt',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? $gt;

  @JsonKey(
      name: '_gte',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? $gte;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableUuidToDartListNullableString,
      toJson: fromDartListNullableStringToGraphQLListNullableUuid)
  List<String>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(
      name: '_lt',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? $lt;

  @JsonKey(
      name: '_lte',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? $lte;

  @JsonKey(
      name: '_neq',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? $neq;

  @JsonKey(
      name: '_nin',
      fromJson: fromGraphQLListNullableUuidToDartListNullableString,
      toJson: fromDartListNullableStringToGraphQLListNullableUuid)
  List<String>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$UuidComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBoolExp extends JsonSerializable with EquatableMixin {
  ProductBoolExp({
    this.$and,
    this.$not,
    this.$or,
    this.brand,
    this.createdAt,
    this.createdByUserUuid,
    this.imageUrl,
    this.name,
    this.productBuyLists,
    this.productBuyListsAggregate,
    this.updatedAt,
    this.uuid,
    this.weight,
  });

  factory ProductBoolExp.fromJson(Map<String, dynamic> json) =>
      _$ProductBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<ProductBoolExp>? $and;

  @JsonKey(name: '_not')
  ProductBoolExp? $not;

  @JsonKey(name: '_or')
  List<ProductBoolExp>? $or;

  StringComparisonExp? brand;

  @JsonKey(name: 'created_at')
  TimestamptzComparisonExp? createdAt;

  @JsonKey(name: 'created_by_user_uuid')
  UuidComparisonExp? createdByUserUuid;

  @JsonKey(name: 'image_url')
  StringComparisonExp? imageUrl;

  StringComparisonExp? name;

  @JsonKey(name: 'product_buy_lists')
  ProductBuyListBoolExp? productBuyLists;

  @JsonKey(name: 'product_buy_lists_aggregate')
  ProductBuyListAggregateBoolExp? productBuyListsAggregate;

  @JsonKey(name: 'updated_at')
  TimestamptzComparisonExp? updatedAt;

  UuidComparisonExp? uuid;

  Float8ComparisonExp? weight;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        brand,
        createdAt,
        createdByUserUuid,
        imageUrl,
        name,
        productBuyLists,
        productBuyListsAggregate,
        updatedAt,
        uuid,
        weight
      ];
  @override
  Map<String, dynamic> toJson() => _$ProductBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBuyListAggregateBoolExp extends JsonSerializable
    with EquatableMixin {
  ProductBuyListAggregateBoolExp({
    this.boolAnd,
    this.boolOr,
    this.count,
  });

  factory ProductBuyListAggregateBoolExp.fromJson(Map<String, dynamic> json) =>
      _$ProductBuyListAggregateBoolExpFromJson(json);

  @JsonKey(name: 'bool_and')
  ProductBuyListAggregateBoolExpBoolAnd? boolAnd;

  @JsonKey(name: 'bool_or')
  ProductBuyListAggregateBoolExpBoolOr? boolOr;

  ProductBuyListAggregateBoolExpCount? count;

  @override
  List<Object?> get props => [boolAnd, boolOr, count];
  @override
  Map<String, dynamic> toJson() => _$ProductBuyListAggregateBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBuyListAggregateBoolExpBoolAnd extends JsonSerializable
    with EquatableMixin {
  ProductBuyListAggregateBoolExpBoolAnd({
    required this.arguments,
    this.distinct,
    this.filter,
    required this.predicate,
  });

  factory ProductBuyListAggregateBoolExpBoolAnd.fromJson(
          Map<String, dynamic> json) =>
      _$ProductBuyListAggregateBoolExpBoolAndFromJson(json);

  @JsonKey(
      unknownEnumValue:
          ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumns
              .artemisUnknown)
  late ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumns
      arguments;

  bool? distinct;

  ProductBuyListBoolExp? filter;

  late BooleanComparisonExp predicate;

  @override
  List<Object?> get props => [arguments, distinct, filter, predicate];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductBuyListAggregateBoolExpBoolAndToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBuyListAggregateBoolExpBoolOr extends JsonSerializable
    with EquatableMixin {
  ProductBuyListAggregateBoolExpBoolOr({
    required this.arguments,
    this.distinct,
    this.filter,
    required this.predicate,
  });

  factory ProductBuyListAggregateBoolExpBoolOr.fromJson(
          Map<String, dynamic> json) =>
      _$ProductBuyListAggregateBoolExpBoolOrFromJson(json);

  @JsonKey(
      unknownEnumValue:
          ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumns
              .artemisUnknown)
  late ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumns
      arguments;

  bool? distinct;

  ProductBuyListBoolExp? filter;

  late BooleanComparisonExp predicate;

  @override
  List<Object?> get props => [arguments, distinct, filter, predicate];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductBuyListAggregateBoolExpBoolOrToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBuyListAggregateBoolExpCount extends JsonSerializable
    with EquatableMixin {
  ProductBuyListAggregateBoolExpCount({
    this.arguments,
    this.distinct,
    this.filter,
    required this.predicate,
  });

  factory ProductBuyListAggregateBoolExpCount.fromJson(
          Map<String, dynamic> json) =>
      _$ProductBuyListAggregateBoolExpCountFromJson(json);

  @JsonKey(unknownEnumValue: ProductBuyListSelectColumn.artemisUnknown)
  List<ProductBuyListSelectColumn>? arguments;

  bool? distinct;

  ProductBuyListBoolExp? filter;

  late IntComparisonExp predicate;

  @override
  List<Object?> get props => [arguments, distinct, filter, predicate];
  @override
  Map<String, dynamic> toJson() =>
      _$ProductBuyListAggregateBoolExpCountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IntComparisonExp extends JsonSerializable with EquatableMixin {
  IntComparisonExp({
    this.$eq,
    this.$gt,
    this.$gte,
    this.$in,
    this.$isNull,
    this.$lt,
    this.$lte,
    this.$neq,
    this.$nin,
  });

  factory IntComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$IntComparisonExpFromJson(json);

  @JsonKey(name: '_eq')
  int? $eq;

  @JsonKey(name: '_gt')
  int? $gt;

  @JsonKey(name: '_gte')
  int? $gte;

  @JsonKey(name: '_in')
  List<int>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(name: '_lt')
  int? $lt;

  @JsonKey(name: '_lte')
  int? $lte;

  @JsonKey(name: '_neq')
  int? $neq;

  @JsonKey(name: '_nin')
  List<int>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$IntComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Float8ComparisonExp extends JsonSerializable with EquatableMixin {
  Float8ComparisonExp({
    this.$eq,
    this.$gt,
    this.$gte,
    this.$in,
    this.$isNull,
    this.$lt,
    this.$lte,
    this.$neq,
    this.$nin,
  });

  factory Float8ComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$Float8ComparisonExpFromJson(json);

  @JsonKey(
      name: '_eq',
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? $eq;

  @JsonKey(
      name: '_gt',
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? $gt;

  @JsonKey(
      name: '_gte',
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? $gte;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableFloat8ToDartListNullabledouble,
      toJson: fromDartListNullabledoubleToGraphQLListNullableFloat8)
  List<double>? $in;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(
      name: '_lt',
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? $lt;

  @JsonKey(
      name: '_lte',
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? $lte;

  @JsonKey(
      name: '_neq',
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? $neq;

  @JsonKey(
      name: '_nin',
      fromJson: fromGraphQLListNullableFloat8ToDartListNullabledouble,
      toJson: fromDartListNullabledoubleToGraphQLListNullableFloat8)
  List<double>? $nin;

  @override
  List<Object?> get props =>
      [$eq, $gt, $gte, $in, $isNull, $lt, $lte, $neq, $nin];
  @override
  Map<String, dynamic> toJson() => _$Float8ComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersBoolExp extends JsonSerializable with EquatableMixin {
  UsersBoolExp({
    this.$and,
    this.$not,
    this.$or,
    this.avatarUrl,
    this.createdAt,
    this.displayName,
    this.email,
    this.emailVerified,
    this.id,
    this.lastSeen,
    this.updatedAt,
  });

  factory UsersBoolExp.fromJson(Map<String, dynamic> json) =>
      _$UsersBoolExpFromJson(json);

  @JsonKey(name: '_and')
  List<UsersBoolExp>? $and;

  @JsonKey(name: '_not')
  UsersBoolExp? $not;

  @JsonKey(name: '_or')
  List<UsersBoolExp>? $or;

  StringComparisonExp? avatarUrl;

  TimestamptzComparisonExp? createdAt;

  StringComparisonExp? displayName;

  CitextComparisonExp? email;

  BooleanComparisonExp? emailVerified;

  UuidComparisonExp? id;

  TimestamptzComparisonExp? lastSeen;

  TimestamptzComparisonExp? updatedAt;

  @override
  List<Object?> get props => [
        $and,
        $not,
        $or,
        avatarUrl,
        createdAt,
        displayName,
        email,
        emailVerified,
        id,
        lastSeen,
        updatedAt
      ];
  @override
  Map<String, dynamic> toJson() => _$UsersBoolExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CitextComparisonExp extends JsonSerializable with EquatableMixin {
  CitextComparisonExp({
    this.$eq,
    this.$gt,
    this.$gte,
    this.$ilike,
    this.$in,
    this.$iregex,
    this.$isNull,
    this.$like,
    this.$lt,
    this.$lte,
    this.$neq,
    this.$nilike,
    this.$nin,
    this.$niregex,
    this.$nlike,
    this.$nregex,
    this.$nsimilar,
    this.$regex,
    this.$similar,
  });

  factory CitextComparisonExp.fromJson(Map<String, dynamic> json) =>
      _$CitextComparisonExpFromJson(json);

  @JsonKey(
      name: '_eq',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $eq;

  @JsonKey(
      name: '_gt',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $gt;

  @JsonKey(
      name: '_gte',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $gte;

  @JsonKey(
      name: '_ilike',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $ilike;

  @JsonKey(
      name: '_in',
      fromJson: fromGraphQLListNullableCitextToDartListNullableString,
      toJson: fromDartListNullableStringToGraphQLListNullableCitext)
  List<String>? $in;

  @JsonKey(
      name: '_iregex',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $iregex;

  @JsonKey(name: '_is_null')
  bool? $isNull;

  @JsonKey(
      name: '_like',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $like;

  @JsonKey(
      name: '_lt',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $lt;

  @JsonKey(
      name: '_lte',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $lte;

  @JsonKey(
      name: '_neq',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $neq;

  @JsonKey(
      name: '_nilike',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $nilike;

  @JsonKey(
      name: '_nin',
      fromJson: fromGraphQLListNullableCitextToDartListNullableString,
      toJson: fromDartListNullableStringToGraphQLListNullableCitext)
  List<String>? $nin;

  @JsonKey(
      name: '_niregex',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $niregex;

  @JsonKey(
      name: '_nlike',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $nlike;

  @JsonKey(
      name: '_nregex',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $nregex;

  @JsonKey(
      name: '_nsimilar',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $nsimilar;

  @JsonKey(
      name: '_regex',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $regex;

  @JsonKey(
      name: '_similar',
      fromJson: fromGraphQLCitextNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLCitextNullable)
  String? $similar;

  @override
  List<Object?> get props => [
        $eq,
        $gt,
        $gte,
        $ilike,
        $in,
        $iregex,
        $isNull,
        $like,
        $lt,
        $lte,
        $neq,
        $nilike,
        $nin,
        $niregex,
        $nlike,
        $nregex,
        $nsimilar,
        $regex,
        $similar
      ];
  @override
  Map<String, dynamic> toJson() => _$CitextComparisonExpToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductObjRelInsertInput extends JsonSerializable with EquatableMixin {
  ProductObjRelInsertInput({
    required this.data,
    this.onConflict,
  });

  factory ProductObjRelInsertInput.fromJson(Map<String, dynamic> json) =>
      _$ProductObjRelInsertInputFromJson(json);

  late ProductInsertInput data;

  @JsonKey(name: 'on_conflict')
  ProductOnConflict? onConflict;

  @override
  List<Object?> get props => [data, onConflict];
  @override
  Map<String, dynamic> toJson() => _$ProductObjRelInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductOnConflict extends JsonSerializable with EquatableMixin {
  ProductOnConflict({
    required this.constraint,
    required this.updateColumns,
    this.where,
  });

  factory ProductOnConflict.fromJson(Map<String, dynamic> json) =>
      _$ProductOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: ProductConstraint.artemisUnknown)
  late ProductConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: ProductUpdateColumn.artemisUnknown)
  late List<ProductUpdateColumn> updateColumns;

  ProductBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$ProductOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductBuyListOnConflict extends JsonSerializable with EquatableMixin {
  ProductBuyListOnConflict({
    required this.constraint,
    required this.updateColumns,
    this.where,
  });

  factory ProductBuyListOnConflict.fromJson(Map<String, dynamic> json) =>
      _$ProductBuyListOnConflictFromJson(json);

  @JsonKey(unknownEnumValue: ProductBuyListConstraint.artemisUnknown)
  late ProductBuyListConstraint constraint;

  @JsonKey(
      name: 'update_columns',
      unknownEnumValue: ProductBuyListUpdateColumn.artemisUnknown)
  late List<ProductBuyListUpdateColumn> updateColumns;

  ProductBuyListBoolExp? where;

  @override
  List<Object?> get props => [constraint, updateColumns, where];
  @override
  Map<String, dynamic> toJson() => _$ProductBuyListOnConflictToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSupermarkets$QueryRoot$Supermarket extends JsonSerializable
    with EquatableMixin {
  GetSupermarkets$QueryRoot$Supermarket();

  factory GetSupermarkets$QueryRoot$Supermarket.fromJson(
          Map<String, dynamic> json) =>
      _$GetSupermarkets$QueryRoot$SupermarketFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String uuid;

  @JsonKey(
      name: 'updated_at',
      fromJson: fromGraphQLTimestamptzToDartDateTime,
      toJson: fromDartDateTimeToGraphQLTimestamptz)
  late DateTime updatedAt;

  late String name;

  @JsonKey(
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? latitude;

  @JsonKey(
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? longitude;

  @JsonKey(name: 'image_url')
  late String imageUrl;

  @JsonKey(
      name: 'created_at',
      fromJson: fromGraphQLTimestamptzToDartDateTime,
      toJson: fromDartDateTimeToGraphQLTimestamptz)
  late DateTime createdAt;

  late String address;

  @override
  List<Object?> get props => [
        uuid,
        updatedAt,
        name,
        latitude,
        longitude,
        imageUrl,
        createdAt,
        address
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$GetSupermarkets$QueryRoot$SupermarketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetSupermarkets$QueryRoot extends JsonSerializable with EquatableMixin {
  GetSupermarkets$QueryRoot();

  factory GetSupermarkets$QueryRoot.fromJson(Map<String, dynamic> json) =>
      _$GetSupermarkets$QueryRootFromJson(json);

  late List<GetSupermarkets$QueryRoot$Supermarket> supermarket;

  @override
  List<Object?> get props => [supermarket];
  @override
  Map<String, dynamic> toJson() => _$GetSupermarkets$QueryRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpsertSupermarkets$MutationRoot$SupermarketMutationResponse
    extends JsonSerializable with EquatableMixin {
  UpsertSupermarkets$MutationRoot$SupermarketMutationResponse();

  factory UpsertSupermarkets$MutationRoot$SupermarketMutationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpsertSupermarkets$MutationRoot$SupermarketMutationResponseFromJson(
          json);

  @JsonKey(name: 'affected_rows')
  late int affectedRows;

  @override
  List<Object?> get props => [affectedRows];
  @override
  Map<String, dynamic> toJson() =>
      _$UpsertSupermarkets$MutationRoot$SupermarketMutationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpsertSupermarkets$MutationRoot extends JsonSerializable
    with EquatableMixin {
  UpsertSupermarkets$MutationRoot();

  factory UpsertSupermarkets$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$UpsertSupermarkets$MutationRootFromJson(json);

  @JsonKey(name: 'insert_supermarket')
  UpsertSupermarkets$MutationRoot$SupermarketMutationResponse?
      insertSupermarket;

  @override
  List<Object?> get props => [insertSupermarket];
  @override
  Map<String, dynamic> toJson() =>
      _$UpsertSupermarkets$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SupermarketInsertInput extends JsonSerializable with EquatableMixin {
  SupermarketInsertInput({
    this.address,
    this.createdAt,
    this.createdByUserUuid,
    this.imageUrl,
    this.latitude,
    this.longitude,
    this.name,
    this.updatedAt,
    this.uuid,
  });

  factory SupermarketInsertInput.fromJson(Map<String, dynamic> json) =>
      _$SupermarketInsertInputFromJson(json);

  String? address;

  @JsonKey(
      name: 'created_at',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? createdAt;

  @JsonKey(
      name: 'created_by_user_uuid',
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? createdByUserUuid;

  @JsonKey(name: 'image_url')
  String? imageUrl;

  @JsonKey(
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? latitude;

  @JsonKey(
      fromJson: fromGraphQLFloat8NullableToDartdoubleNullable,
      toJson: fromDartdoubleNullableToGraphQLFloat8Nullable)
  double? longitude;

  String? name;

  @JsonKey(
      name: 'updated_at',
      fromJson: fromGraphQLTimestamptzNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLTimestamptzNullable)
  DateTime? updatedAt;

  @JsonKey(
      fromJson: fromGraphQLUuidNullableToDartStringNullable,
      toJson: fromDartStringNullableToGraphQLUuidNullable)
  String? uuid;

  @override
  List<Object?> get props => [
        address,
        createdAt,
        createdByUserUuid,
        imageUrl,
        latitude,
        longitude,
        name,
        updatedAt,
        uuid
      ];
  @override
  Map<String, dynamic> toJson() => _$SupermarketInsertInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AppChangeSupermarketImageUrl$MutationRoot$Supermarket
    extends JsonSerializable with EquatableMixin {
  AppChangeSupermarketImageUrl$MutationRoot$Supermarket();

  factory AppChangeSupermarketImageUrl$MutationRoot$Supermarket.fromJson(
          Map<String, dynamic> json) =>
      _$AppChangeSupermarketImageUrl$MutationRoot$SupermarketFromJson(json);

  @JsonKey(name: 'image_url')
  late String imageUrl;

  @override
  List<Object?> get props => [imageUrl];
  @override
  Map<String, dynamic> toJson() =>
      _$AppChangeSupermarketImageUrl$MutationRoot$SupermarketToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AppChangeSupermarketImageUrl$MutationRoot extends JsonSerializable
    with EquatableMixin {
  AppChangeSupermarketImageUrl$MutationRoot();

  factory AppChangeSupermarketImageUrl$MutationRoot.fromJson(
          Map<String, dynamic> json) =>
      _$AppChangeSupermarketImageUrl$MutationRootFromJson(json);

  @JsonKey(name: 'update_supermarket_by_pk')
  AppChangeSupermarketImageUrl$MutationRoot$Supermarket? updateSupermarketByPk;

  @override
  List<Object?> get props => [updateSupermarketByPk];
  @override
  Map<String, dynamic> toJson() =>
      _$AppChangeSupermarketImageUrl$MutationRootToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpsertBuyList$MutationRoot$BuyListMutationResponse
    extends JsonSerializable with EquatableMixin {
  UpsertBuyList$MutationRoot$BuyListMutationResponse();

  factory UpsertBuyList$MutationRoot$BuyListMutationResponse.fromJson(
          Map<String, dynamic> json) =>
      _$UpsertBuyList$MutationRoot$BuyListMutationResponseFromJson(json);

  @JsonKey(name: 'affected_rows')
  late int affectedRows;

  @override
  List<Object?> get props => [affectedRows];
  @override
  Map<String, dynamic> toJson() =>
      _$UpsertBuyList$MutationRoot$BuyListMutationResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpsertBuyList$MutationRoot extends JsonSerializable with EquatableMixin {
  UpsertBuyList$MutationRoot();

  factory UpsertBuyList$MutationRoot.fromJson(Map<String, dynamic> json) =>
      _$UpsertBuyList$MutationRootFromJson(json);

  @JsonKey(name: 'insert_buy_list')
  UpsertBuyList$MutationRoot$BuyListMutationResponse? insertBuyList;

  @override
  List<Object?> get props => [insertBuyList];
  @override
  Map<String, dynamic> toJson() => _$UpsertBuyList$MutationRootToJson(this);
}

enum BuyListConstraint {
  @JsonValue('buy_list_pkey')
  buyListPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum BuyListUpdateColumn {
  @JsonValue('created_at')
  createdAt,
  @JsonValue('name')
  name,
  @JsonValue('updated_at')
  updatedAt,
  @JsonValue('uuid')
  uuid,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumns {
  @JsonValue('bought')
  bought,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumns {
  @JsonValue('bought')
  bought,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ProductBuyListSelectColumn {
  @JsonValue('bought')
  bought,
  @JsonValue('buy_list_uuid')
  buyListUuid,
  @JsonValue('created_at')
  createdAt,
  @JsonValue('price_uuid')
  priceUuid,
  @JsonValue('product_uuid')
  productUuid,
  @JsonValue('quantity')
  quantity,
  @JsonValue('updated_at')
  updatedAt,
  @JsonValue('uuid')
  uuid,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ProductConstraint {
  @JsonValue('product_pkey')
  productPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ProductUpdateColumn {
  @JsonValue('brand')
  brand,
  @JsonValue('created_at')
  createdAt,
  @JsonValue('created_by_user_uuid')
  createdByUserUuid,
  @JsonValue('image_url')
  imageUrl,
  @JsonValue('name')
  name,
  @JsonValue('updated_at')
  updatedAt,
  @JsonValue('uuid')
  uuid,
  @JsonValue('weight')
  weight,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ProductBuyListConstraint {
  @JsonValue('product_buy_list_pkey')
  productBuyListPkey,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

enum ProductBuyListUpdateColumn {
  @JsonValue('bought')
  bought,
  @JsonValue('price_uuid')
  priceUuid,
  @JsonValue('quantity')
  quantity,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class AppDeleteUserArguments extends JsonSerializable with EquatableMixin {
  AppDeleteUserArguments({required this.userId});

  @override
  factory AppDeleteUserArguments.fromJson(Map<String, dynamic> json) =>
      _$AppDeleteUserArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String userId;

  @override
  List<Object?> get props => [userId];
  @override
  Map<String, dynamic> toJson() => _$AppDeleteUserArgumentsToJson(this);
}

final APP_DELETE_USER_MUTATION_DOCUMENT_OPERATION_NAME = 'AppDeleteUser';
final APP_DELETE_USER_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AppDeleteUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'userId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class AppDeleteUserMutation
    extends GraphQLQuery<AppDeleteUser$MutationRoot, AppDeleteUserArguments> {
  AppDeleteUserMutation({required this.variables});

  @override
  final DocumentNode document = APP_DELETE_USER_MUTATION_DOCUMENT;

  @override
  final String operationName = APP_DELETE_USER_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AppDeleteUserArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AppDeleteUser$MutationRoot parse(Map<String, dynamic> json) =>
      AppDeleteUser$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AppChangeAvatarUrlArguments extends JsonSerializable with EquatableMixin {
  AppChangeAvatarUrlArguments({
    required this.userId,
    required this.avatarUrl,
  });

  @override
  factory AppChangeAvatarUrlArguments.fromJson(Map<String, dynamic> json) =>
      _$AppChangeAvatarUrlArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String userId;

  late String avatarUrl;

  @override
  List<Object?> get props => [userId, avatarUrl];
  @override
  Map<String, dynamic> toJson() => _$AppChangeAvatarUrlArgumentsToJson(this);
}

final APP_CHANGE_AVATAR_URL_MUTATION_DOCUMENT_OPERATION_NAME =
    'AppChangeAvatarUrl';
final APP_CHANGE_AVATAR_URL_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AppChangeAvatarUrl'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'avatarUrl')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pk_columns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'userId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'avatarUrl'),
                value: VariableNode(name: NameNode(value: 'avatarUrl')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'displayName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatarUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class AppChangeAvatarUrlMutation extends GraphQLQuery<
    AppChangeAvatarUrl$MutationRoot, AppChangeAvatarUrlArguments> {
  AppChangeAvatarUrlMutation({required this.variables});

  @override
  final DocumentNode document = APP_CHANGE_AVATAR_URL_MUTATION_DOCUMENT;

  @override
  final String operationName =
      APP_CHANGE_AVATAR_URL_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AppChangeAvatarUrlArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AppChangeAvatarUrl$MutationRoot parse(Map<String, dynamic> json) =>
      AppChangeAvatarUrl$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AppChangeUserNameArguments extends JsonSerializable with EquatableMixin {
  AppChangeUserNameArguments({
    required this.userId,
    required this.name,
  });

  @override
  factory AppChangeUserNameArguments.fromJson(Map<String, dynamic> json) =>
      _$AppChangeUserNameArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String userId;

  late String name;

  @override
  List<Object?> get props => [userId, name];
  @override
  Map<String, dynamic> toJson() => _$AppChangeUserNameArgumentsToJson(this);
}

final APP_CHANGE_USER_NAME_MUTATION_DOCUMENT_OPERATION_NAME =
    'AppChangeUserName';
final APP_CHANGE_USER_NAME_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AppChangeUserName'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUser'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pk_columns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'userId')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'displayName'),
                value: VariableNode(name: NameNode(value: 'name')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'displayName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'avatarUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updatedAt'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class AppChangeUserNameMutation extends GraphQLQuery<
    AppChangeUserName$MutationRoot, AppChangeUserNameArguments> {
  AppChangeUserNameMutation({required this.variables});

  @override
  final DocumentNode document = APP_CHANGE_USER_NAME_MUTATION_DOCUMENT;

  @override
  final String operationName =
      APP_CHANGE_USER_NAME_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AppChangeUserNameArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AppChangeUserName$MutationRoot parse(Map<String, dynamic> json) =>
      AppChangeUserName$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetProductsArguments extends JsonSerializable with EquatableMixin {
  GetProductsArguments({required this.lastSyncedAt});

  @override
  factory GetProductsArguments.fromJson(Map<String, dynamic> json) =>
      _$GetProductsArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLTimestamptzToDartDateTime,
      toJson: fromDartDateTimeToGraphQLTimestamptz)
  late DateTime lastSyncedAt;

  @override
  List<Object?> get props => [lastSyncedAt];
  @override
  Map<String, dynamic> toJson() => _$GetProductsArgumentsToJson(this);
}

final GET_PRODUCTS_QUERY_DOCUMENT_OPERATION_NAME = 'GetProducts';
final GET_PRODUCTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastSyncedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'product'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'updated_at'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_gt'),
                    value: VariableNode(name: NameNode(value: 'lastSyncedAt')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'uuid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updated_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'weight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created_by_user_uuid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'brand'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class GetProductsQuery
    extends GraphQLQuery<GetProducts$QueryRoot, GetProductsArguments> {
  GetProductsQuery({required this.variables});

  @override
  final DocumentNode document = GET_PRODUCTS_QUERY_DOCUMENT;

  @override
  final String operationName = GET_PRODUCTS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetProductsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetProducts$QueryRoot parse(Map<String, dynamic> json) =>
      GetProducts$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpsertProductsArguments extends JsonSerializable with EquatableMixin {
  UpsertProductsArguments({required this.products});

  @override
  factory UpsertProductsArguments.fromJson(Map<String, dynamic> json) =>
      _$UpsertProductsArgumentsFromJson(json);

  late List<ProductInsertInput> products;

  @override
  List<Object?> get props => [products];
  @override
  Map<String, dynamic> toJson() => _$UpsertProductsArgumentsToJson(this);
}

final UPSERT_PRODUCTS_MUTATION_DOCUMENT_OPERATION_NAME = 'UpsertProducts';
final UPSERT_PRODUCTS_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpsertProducts'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'products')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'product_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_product'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'products')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(name: NameNode(value: 'product_pkey')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'name')),
                  EnumValueNode(name: NameNode(value: 'image_url')),
                  EnumValueNode(name: NameNode(value: 'weight')),
                  EnumValueNode(name: NameNode(value: 'brand')),
                ]),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class UpsertProductsMutation
    extends GraphQLQuery<UpsertProducts$MutationRoot, UpsertProductsArguments> {
  UpsertProductsMutation({required this.variables});

  @override
  final DocumentNode document = UPSERT_PRODUCTS_MUTATION_DOCUMENT;

  @override
  final String operationName = UPSERT_PRODUCTS_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpsertProductsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpsertProducts$MutationRoot parse(Map<String, dynamic> json) =>
      UpsertProducts$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetSupermarketsArguments extends JsonSerializable with EquatableMixin {
  GetSupermarketsArguments({required this.lastSyncedAt});

  @override
  factory GetSupermarketsArguments.fromJson(Map<String, dynamic> json) =>
      _$GetSupermarketsArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLTimestamptzToDartDateTime,
      toJson: fromDartDateTimeToGraphQLTimestamptz)
  late DateTime lastSyncedAt;

  @override
  List<Object?> get props => [lastSyncedAt];
  @override
  Map<String, dynamic> toJson() => _$GetSupermarketsArgumentsToJson(this);
}

final GET_SUPERMARKETS_QUERY_DOCUMENT_OPERATION_NAME = 'GetSupermarkets';
final GET_SUPERMARKETS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetSupermarkets'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'lastSyncedAt')),
        type: NamedTypeNode(
          name: NameNode(value: 'timestamptz'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'supermarket'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'updated_at'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_gt'),
                    value: VariableNode(name: NameNode(value: 'lastSyncedAt')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'uuid'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updated_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'latitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'longitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class GetSupermarketsQuery
    extends GraphQLQuery<GetSupermarkets$QueryRoot, GetSupermarketsArguments> {
  GetSupermarketsQuery({required this.variables});

  @override
  final DocumentNode document = GET_SUPERMARKETS_QUERY_DOCUMENT;

  @override
  final String operationName = GET_SUPERMARKETS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetSupermarketsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetSupermarkets$QueryRoot parse(Map<String, dynamic> json) =>
      GetSupermarkets$QueryRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpsertSupermarketsArguments extends JsonSerializable with EquatableMixin {
  UpsertSupermarketsArguments({required this.supermarkets});

  @override
  factory UpsertSupermarketsArguments.fromJson(Map<String, dynamic> json) =>
      _$UpsertSupermarketsArgumentsFromJson(json);

  late List<SupermarketInsertInput> supermarkets;

  @override
  List<Object?> get props => [supermarkets];
  @override
  Map<String, dynamic> toJson() => _$UpsertSupermarketsArgumentsToJson(this);
}

final UPSERT_SUPERMARKETS_MUTATION_DOCUMENT_OPERATION_NAME =
    'UpsertSupermarkets';
final UPSERT_SUPERMARKETS_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpsertSupermarkets'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'supermarkets')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'supermarket_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_supermarket'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'supermarkets')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(name: NameNode(value: 'supermarket_pkey')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(values: [
                  EnumValueNode(name: NameNode(value: 'name')),
                  EnumValueNode(name: NameNode(value: 'image_url')),
                  EnumValueNode(name: NameNode(value: 'address')),
                  EnumValueNode(name: NameNode(value: 'latitude')),
                  EnumValueNode(name: NameNode(value: 'longitude')),
                ]),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class UpsertSupermarketsMutation extends GraphQLQuery<
    UpsertSupermarkets$MutationRoot, UpsertSupermarketsArguments> {
  UpsertSupermarketsMutation({required this.variables});

  @override
  final DocumentNode document = UPSERT_SUPERMARKETS_MUTATION_DOCUMENT;

  @override
  final String operationName =
      UPSERT_SUPERMARKETS_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpsertSupermarketsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpsertSupermarkets$MutationRoot parse(Map<String, dynamic> json) =>
      UpsertSupermarkets$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AppChangeSupermarketImageUrlArguments extends JsonSerializable
    with EquatableMixin {
  AppChangeSupermarketImageUrlArguments({
    required this.uuid,
    required this.newImageUrl,
  });

  @override
  factory AppChangeSupermarketImageUrlArguments.fromJson(
          Map<String, dynamic> json) =>
      _$AppChangeSupermarketImageUrlArgumentsFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLUuidToDartString,
      toJson: fromDartStringToGraphQLUuid)
  late String uuid;

  late String newImageUrl;

  @override
  List<Object?> get props => [uuid, newImageUrl];
  @override
  Map<String, dynamic> toJson() =>
      _$AppChangeSupermarketImageUrlArgumentsToJson(this);
}

final APP_CHANGE_SUPERMARKET_IMAGE_URL_MUTATION_DOCUMENT_OPERATION_NAME =
    'AppChangeSupermarketImageUrl';
final APP_CHANGE_SUPERMARKET_IMAGE_URL_MUTATION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AppChangeSupermarketImageUrl'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'uuid')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'newImageUrl')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_supermarket_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'pk_columns'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'uuid'),
                value: VariableNode(name: NameNode(value: 'uuid')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'image_url'),
                value: VariableNode(name: NameNode(value: 'newImageUrl')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'image_url'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class AppChangeSupermarketImageUrlMutation extends GraphQLQuery<
    AppChangeSupermarketImageUrl$MutationRoot,
    AppChangeSupermarketImageUrlArguments> {
  AppChangeSupermarketImageUrlMutation({required this.variables});

  @override
  final DocumentNode document =
      APP_CHANGE_SUPERMARKET_IMAGE_URL_MUTATION_DOCUMENT;

  @override
  final String operationName =
      APP_CHANGE_SUPERMARKET_IMAGE_URL_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AppChangeSupermarketImageUrlArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AppChangeSupermarketImageUrl$MutationRoot parse(Map<String, dynamic> json) =>
      AppChangeSupermarketImageUrl$MutationRoot.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpsertBuyListArguments extends JsonSerializable with EquatableMixin {
  UpsertBuyListArguments({required this.buyList});

  @override
  factory UpsertBuyListArguments.fromJson(Map<String, dynamic> json) =>
      _$UpsertBuyListArgumentsFromJson(json);

  late List<BuyListInsertInput> buyList;

  @override
  List<Object?> get props => [buyList];
  @override
  Map<String, dynamic> toJson() => _$UpsertBuyListArgumentsToJson(this);
}

final UPSERT_BUY_LIST_MUTATION_DOCUMENT_OPERATION_NAME = 'UpsertBuyList';
final UPSERT_BUY_LIST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpsertBuyList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'buyList')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'buy_list_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_buy_list'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'buyList')),
          ),
          ArgumentNode(
            name: NameNode(value: 'on_conflict'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'constraint'),
                value: EnumValueNode(name: NameNode(value: 'buy_list_pkey')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update_columns'),
                value: ListValueNode(
                    values: [EnumValueNode(name: NameNode(value: 'name'))]),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class UpsertBuyListMutation
    extends GraphQLQuery<UpsertBuyList$MutationRoot, UpsertBuyListArguments> {
  UpsertBuyListMutation({required this.variables});

  @override
  final DocumentNode document = UPSERT_BUY_LIST_MUTATION_DOCUMENT;

  @override
  final String operationName = UPSERT_BUY_LIST_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpsertBuyListArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  UpsertBuyList$MutationRoot parse(Map<String, dynamic> json) =>
      UpsertBuyList$MutationRoot.fromJson(json);
}
