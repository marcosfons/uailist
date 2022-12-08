// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
      productBuyLists: json['product_buy_lists'] == null
          ? null
          : ProductBuyListArrRelInsertInput.fromJson(
              json['product_buy_lists'] as Map<String, dynamic>),
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
      'product_buy_lists': instance.productBuyLists?.toJson(),
      'updated_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.updatedAt),
      'uuid': fromDartStringNullableToGraphQLUuidNullable(instance.uuid),
      'weight': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.weight),
    };

ProductBuyListArrRelInsertInput _$ProductBuyListArrRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    ProductBuyListArrRelInsertInput(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              ProductBuyListInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      onConflict: json['on_conflict'] == null
          ? null
          : ProductBuyListOnConflict.fromJson(
              json['on_conflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductBuyListArrRelInsertInputToJson(
        ProductBuyListArrRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'on_conflict': instance.onConflict?.toJson(),
    };

ProductBuyListInsertInput _$ProductBuyListInsertInputFromJson(
        Map<String, dynamic> json) =>
    ProductBuyListInsertInput(
      bought: json['bought'] as bool?,
      buyList: json['buy_list'] == null
          ? null
          : BuyListObjRelInsertInput.fromJson(
              json['buy_list'] as Map<String, dynamic>),
      buyListUuid: fromGraphQLUuidNullableToDartStringNullable(
          json['buy_list_uuid'] as String?),
      createdAt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['created_at'] as String?),
      priceUuid: fromGraphQLUuidNullableToDartStringNullable(
          json['price_uuid'] as String?),
      product: json['product'] == null
          ? null
          : ProductObjRelInsertInput.fromJson(
              json['product'] as Map<String, dynamic>),
      productUuid: fromGraphQLUuidNullableToDartStringNullable(
          json['product_uuid'] as String?),
      quantity: json['quantity'] as int?,
      updatedAt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['updated_at'] as String?),
      uuid:
          fromGraphQLUuidNullableToDartStringNullable(json['uuid'] as String?),
    );

Map<String, dynamic> _$ProductBuyListInsertInputToJson(
        ProductBuyListInsertInput instance) =>
    <String, dynamic>{
      'bought': instance.bought,
      'buy_list': instance.buyList?.toJson(),
      'buy_list_uuid':
          fromDartStringNullableToGraphQLUuidNullable(instance.buyListUuid),
      'created_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.createdAt),
      'price_uuid':
          fromDartStringNullableToGraphQLUuidNullable(instance.priceUuid),
      'product': instance.product?.toJson(),
      'product_uuid':
          fromDartStringNullableToGraphQLUuidNullable(instance.productUuid),
      'quantity': instance.quantity,
      'updated_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.updatedAt),
      'uuid': fromDartStringNullableToGraphQLUuidNullable(instance.uuid),
    };

BuyListObjRelInsertInput _$BuyListObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    BuyListObjRelInsertInput(
      data: BuyListInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['on_conflict'] == null
          ? null
          : BuyListOnConflict.fromJson(
              json['on_conflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BuyListObjRelInsertInputToJson(
        BuyListObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'on_conflict': instance.onConflict?.toJson(),
    };

BuyListInsertInput _$BuyListInsertInputFromJson(Map<String, dynamic> json) =>
    BuyListInsertInput(
      createdAt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['created_at'] as String?),
      name: json['name'] as String?,
      productBuyLists: json['product_buy_lists'] == null
          ? null
          : ProductBuyListArrRelInsertInput.fromJson(
              json['product_buy_lists'] as Map<String, dynamic>),
      updatedAt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['updated_at'] as String?),
      uuid:
          fromGraphQLUuidNullableToDartStringNullable(json['uuid'] as String?),
    );

Map<String, dynamic> _$BuyListInsertInputToJson(BuyListInsertInput instance) =>
    <String, dynamic>{
      'created_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.createdAt),
      'name': instance.name,
      'product_buy_lists': instance.productBuyLists?.toJson(),
      'updated_at': fromDartDateTimeNullableToGraphQLTimestamptzNullable(
          instance.updatedAt),
      'uuid': fromDartStringNullableToGraphQLUuidNullable(instance.uuid),
    };

BuyListOnConflict _$BuyListOnConflictFromJson(Map<String, dynamic> json) =>
    BuyListOnConflict(
      constraint: $enumDecode(_$BuyListConstraintEnumMap, json['constraint'],
          unknownValue: BuyListConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$BuyListUpdateColumnEnumMap, e,
              unknownValue: BuyListUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : BuyListBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BuyListOnConflictToJson(BuyListOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$BuyListConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$BuyListUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$BuyListConstraintEnumMap = {
  BuyListConstraint.buyListPkey: 'buy_list_pkey',
  BuyListConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$BuyListUpdateColumnEnumMap = {
  BuyListUpdateColumn.createdAt: 'created_at',
  BuyListUpdateColumn.name: 'name',
  BuyListUpdateColumn.updatedAt: 'updated_at',
  BuyListUpdateColumn.uuid: 'uuid',
  BuyListUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

BuyListBoolExp _$BuyListBoolExpFromJson(Map<String, dynamic> json) =>
    BuyListBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => BuyListBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : BuyListBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => BuyListBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['created_at'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      productBuyLists: json['product_buy_lists'] == null
          ? null
          : ProductBuyListBoolExp.fromJson(
              json['product_buy_lists'] as Map<String, dynamic>),
      productBuyListsAggregate: json['product_buy_lists_aggregate'] == null
          ? null
          : ProductBuyListAggregateBoolExp.fromJson(
              json['product_buy_lists_aggregate'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['updated_at'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UsersBoolExp.fromJson(json['user'] as Map<String, dynamic>),
      userUuid: json['user_uuid'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['user_uuid'] as Map<String, dynamic>),
      uuid: json['uuid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['uuid'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BuyListBoolExpToJson(BuyListBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'created_at': instance.createdAt?.toJson(),
      'name': instance.name?.toJson(),
      'product_buy_lists': instance.productBuyLists?.toJson(),
      'product_buy_lists_aggregate':
          instance.productBuyListsAggregate?.toJson(),
      'updated_at': instance.updatedAt?.toJson(),
      'user': instance.user?.toJson(),
      'user_uuid': instance.userUuid?.toJson(),
      'uuid': instance.uuid?.toJson(),
    };

TimestamptzComparisonExp _$TimestamptzComparisonExpFromJson(
        Map<String, dynamic> json) =>
    TimestamptzComparisonExp(
      $eq: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['_eq'] as String?),
      $gt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['_gt'] as String?),
      $gte: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['_gte'] as String?),
      $in: fromGraphQLListNullableTimestamptzToDartListNullableDateTime(
          json['_in'] as List<String>?),
      $isNull: json['_is_null'] as bool?,
      $lt: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['_lt'] as String?),
      $lte: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['_lte'] as String?),
      $neq: fromGraphQLTimestamptzNullableToDartDateTimeNullable(
          json['_neq'] as String?),
      $nin: fromGraphQLListNullableTimestamptzToDartListNullableDateTime(
          json['_nin'] as List<String>?),
    );

Map<String, dynamic> _$TimestamptzComparisonExpToJson(
        TimestamptzComparisonExp instance) =>
    <String, dynamic>{
      '_eq': fromDartDateTimeNullableToGraphQLTimestamptzNullable(instance.$eq),
      '_gt': fromDartDateTimeNullableToGraphQLTimestamptzNullable(instance.$gt),
      '_gte':
          fromDartDateTimeNullableToGraphQLTimestamptzNullable(instance.$gte),
      '_in': fromDartListNullableDateTimeToGraphQLListNullableTimestamptz(
          instance.$in),
      '_is_null': instance.$isNull,
      '_lt': fromDartDateTimeNullableToGraphQLTimestamptzNullable(instance.$lt),
      '_lte':
          fromDartDateTimeNullableToGraphQLTimestamptzNullable(instance.$lte),
      '_neq':
          fromDartDateTimeNullableToGraphQLTimestamptzNullable(instance.$neq),
      '_nin': fromDartListNullableDateTimeToGraphQLListNullableTimestamptz(
          instance.$nin),
    };

StringComparisonExp _$StringComparisonExpFromJson(Map<String, dynamic> json) =>
    StringComparisonExp(
      $eq: json['_eq'] as String?,
      $gt: json['_gt'] as String?,
      $gte: json['_gte'] as String?,
      $ilike: json['_ilike'] as String?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $iregex: json['_iregex'] as String?,
      $isNull: json['_is_null'] as bool?,
      $like: json['_like'] as String?,
      $lt: json['_lt'] as String?,
      $lte: json['_lte'] as String?,
      $neq: json['_neq'] as String?,
      $nilike: json['_nilike'] as String?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as String).toList(),
      $niregex: json['_niregex'] as String?,
      $nlike: json['_nlike'] as String?,
      $nregex: json['_nregex'] as String?,
      $nsimilar: json['_nsimilar'] as String?,
      $regex: json['_regex'] as String?,
      $similar: json['_similar'] as String?,
    );

Map<String, dynamic> _$StringComparisonExpToJson(
        StringComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_ilike': instance.$ilike,
      '_in': instance.$in,
      '_iregex': instance.$iregex,
      '_is_null': instance.$isNull,
      '_like': instance.$like,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nilike': instance.$nilike,
      '_nin': instance.$nin,
      '_niregex': instance.$niregex,
      '_nlike': instance.$nlike,
      '_nregex': instance.$nregex,
      '_nsimilar': instance.$nsimilar,
      '_regex': instance.$regex,
      '_similar': instance.$similar,
    };

ProductBuyListBoolExp _$ProductBuyListBoolExpFromJson(
        Map<String, dynamic> json) =>
    ProductBuyListBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map(
              (e) => ProductBuyListBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : ProductBuyListBoolExp.fromJson(
              json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map(
              (e) => ProductBuyListBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      bought: json['bought'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['bought'] as Map<String, dynamic>),
      buyList: json['buy_list'] == null
          ? null
          : BuyListBoolExp.fromJson(json['buy_list'] as Map<String, dynamic>),
      buyListUuid: json['buy_list_uuid'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['buy_list_uuid'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['created_at'] as Map<String, dynamic>),
      priceUuid: json['price_uuid'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['price_uuid'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductBoolExp.fromJson(json['product'] as Map<String, dynamic>),
      productUuid: json['product_uuid'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['product_uuid'] as Map<String, dynamic>),
      quantity: json['quantity'] == null
          ? null
          : IntComparisonExp.fromJson(json['quantity'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['updated_at'] as Map<String, dynamic>),
      uuid: json['uuid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['uuid'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductBuyListBoolExpToJson(
        ProductBuyListBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'bought': instance.bought?.toJson(),
      'buy_list': instance.buyList?.toJson(),
      'buy_list_uuid': instance.buyListUuid?.toJson(),
      'created_at': instance.createdAt?.toJson(),
      'price_uuid': instance.priceUuid?.toJson(),
      'product': instance.product?.toJson(),
      'product_uuid': instance.productUuid?.toJson(),
      'quantity': instance.quantity?.toJson(),
      'updated_at': instance.updatedAt?.toJson(),
      'uuid': instance.uuid?.toJson(),
    };

BooleanComparisonExp _$BooleanComparisonExpFromJson(
        Map<String, dynamic> json) =>
    BooleanComparisonExp(
      $eq: json['_eq'] as bool?,
      $gt: json['_gt'] as bool?,
      $gte: json['_gte'] as bool?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as bool).toList(),
      $isNull: json['_is_null'] as bool?,
      $lt: json['_lt'] as bool?,
      $lte: json['_lte'] as bool?,
      $neq: json['_neq'] as bool?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as bool).toList(),
    );

Map<String, dynamic> _$BooleanComparisonExpToJson(
        BooleanComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

UuidComparisonExp _$UuidComparisonExpFromJson(Map<String, dynamic> json) =>
    UuidComparisonExp(
      $eq: fromGraphQLUuidNullableToDartStringNullable(json['_eq'] as String?),
      $gt: fromGraphQLUuidNullableToDartStringNullable(json['_gt'] as String?),
      $gte:
          fromGraphQLUuidNullableToDartStringNullable(json['_gte'] as String?),
      $in: fromGraphQLListNullableUuidToDartListNullableString(
          json['_in'] as List<String>?),
      $isNull: json['_is_null'] as bool?,
      $lt: fromGraphQLUuidNullableToDartStringNullable(json['_lt'] as String?),
      $lte:
          fromGraphQLUuidNullableToDartStringNullable(json['_lte'] as String?),
      $neq:
          fromGraphQLUuidNullableToDartStringNullable(json['_neq'] as String?),
      $nin: fromGraphQLListNullableUuidToDartListNullableString(
          json['_nin'] as List<String>?),
    );

Map<String, dynamic> _$UuidComparisonExpToJson(UuidComparisonExp instance) =>
    <String, dynamic>{
      '_eq': fromDartStringNullableToGraphQLUuidNullable(instance.$eq),
      '_gt': fromDartStringNullableToGraphQLUuidNullable(instance.$gt),
      '_gte': fromDartStringNullableToGraphQLUuidNullable(instance.$gte),
      '_in': fromDartListNullableStringToGraphQLListNullableUuid(instance.$in),
      '_is_null': instance.$isNull,
      '_lt': fromDartStringNullableToGraphQLUuidNullable(instance.$lt),
      '_lte': fromDartStringNullableToGraphQLUuidNullable(instance.$lte),
      '_neq': fromDartStringNullableToGraphQLUuidNullable(instance.$neq),
      '_nin':
          fromDartListNullableStringToGraphQLListNullableUuid(instance.$nin),
    };

ProductBoolExp _$ProductBoolExpFromJson(Map<String, dynamic> json) =>
    ProductBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => ProductBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : ProductBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => ProductBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      brand: json['brand'] == null
          ? null
          : StringComparisonExp.fromJson(json['brand'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['created_at'] as Map<String, dynamic>),
      createdByUserUuid: json['created_by_user_uuid'] == null
          ? null
          : UuidComparisonExp.fromJson(
              json['created_by_user_uuid'] as Map<String, dynamic>),
      imageUrl: json['image_url'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['image_url'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringComparisonExp.fromJson(json['name'] as Map<String, dynamic>),
      productBuyLists: json['product_buy_lists'] == null
          ? null
          : ProductBuyListBoolExp.fromJson(
              json['product_buy_lists'] as Map<String, dynamic>),
      productBuyListsAggregate: json['product_buy_lists_aggregate'] == null
          ? null
          : ProductBuyListAggregateBoolExp.fromJson(
              json['product_buy_lists_aggregate'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['updated_at'] as Map<String, dynamic>),
      uuid: json['uuid'] == null
          ? null
          : UuidComparisonExp.fromJson(json['uuid'] as Map<String, dynamic>),
      weight: json['weight'] == null
          ? null
          : Float8ComparisonExp.fromJson(
              json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductBoolExpToJson(ProductBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'brand': instance.brand?.toJson(),
      'created_at': instance.createdAt?.toJson(),
      'created_by_user_uuid': instance.createdByUserUuid?.toJson(),
      'image_url': instance.imageUrl?.toJson(),
      'name': instance.name?.toJson(),
      'product_buy_lists': instance.productBuyLists?.toJson(),
      'product_buy_lists_aggregate':
          instance.productBuyListsAggregate?.toJson(),
      'updated_at': instance.updatedAt?.toJson(),
      'uuid': instance.uuid?.toJson(),
      'weight': instance.weight?.toJson(),
    };

ProductBuyListAggregateBoolExp _$ProductBuyListAggregateBoolExpFromJson(
        Map<String, dynamic> json) =>
    ProductBuyListAggregateBoolExp(
      boolAnd: json['bool_and'] == null
          ? null
          : ProductBuyListAggregateBoolExpBoolAnd.fromJson(
              json['bool_and'] as Map<String, dynamic>),
      boolOr: json['bool_or'] == null
          ? null
          : ProductBuyListAggregateBoolExpBoolOr.fromJson(
              json['bool_or'] as Map<String, dynamic>),
      count: json['count'] == null
          ? null
          : ProductBuyListAggregateBoolExpCount.fromJson(
              json['count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductBuyListAggregateBoolExpToJson(
        ProductBuyListAggregateBoolExp instance) =>
    <String, dynamic>{
      'bool_and': instance.boolAnd?.toJson(),
      'bool_or': instance.boolOr?.toJson(),
      'count': instance.count?.toJson(),
    };

ProductBuyListAggregateBoolExpBoolAnd
    _$ProductBuyListAggregateBoolExpBoolAndFromJson(
            Map<String, dynamic> json) =>
        ProductBuyListAggregateBoolExpBoolAnd(
          arguments: $enumDecode(
              _$ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumnsEnumMap,
              json['arguments'],
              unknownValue:
                  ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumns
                      .artemisUnknown),
          distinct: json['distinct'] as bool?,
          filter: json['filter'] == null
              ? null
              : ProductBuyListBoolExp.fromJson(
                  json['filter'] as Map<String, dynamic>),
          predicate: BooleanComparisonExp.fromJson(
              json['predicate'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductBuyListAggregateBoolExpBoolAndToJson(
        ProductBuyListAggregateBoolExpBoolAnd instance) =>
    <String, dynamic>{
      'arguments':
          _$ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumnsEnumMap[
              instance.arguments]!,
      'distinct': instance.distinct,
      'filter': instance.filter?.toJson(),
      'predicate': instance.predicate.toJson(),
    };

const _$ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumnsEnumMap =
    {
  ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumns
      .bought: 'bought',
  ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolAndArgumentsColumns
      .artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ProductBuyListAggregateBoolExpBoolOr
    _$ProductBuyListAggregateBoolExpBoolOrFromJson(Map<String, dynamic> json) =>
        ProductBuyListAggregateBoolExpBoolOr(
          arguments: $enumDecode(
              _$ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumnsEnumMap,
              json['arguments'],
              unknownValue:
                  ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumns
                      .artemisUnknown),
          distinct: json['distinct'] as bool?,
          filter: json['filter'] == null
              ? null
              : ProductBuyListBoolExp.fromJson(
                  json['filter'] as Map<String, dynamic>),
          predicate: BooleanComparisonExp.fromJson(
              json['predicate'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductBuyListAggregateBoolExpBoolOrToJson(
        ProductBuyListAggregateBoolExpBoolOr instance) =>
    <String, dynamic>{
      'arguments':
          _$ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumnsEnumMap[
              instance.arguments]!,
      'distinct': instance.distinct,
      'filter': instance.filter?.toJson(),
      'predicate': instance.predicate.toJson(),
    };

const _$ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumnsEnumMap =
    {
  ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumns
      .bought: 'bought',
  ProductBuyListSelectColumnProductBuyListAggregateBoolExpBoolOrArgumentsColumns
      .artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ProductBuyListAggregateBoolExpCount
    _$ProductBuyListAggregateBoolExpCountFromJson(Map<String, dynamic> json) =>
        ProductBuyListAggregateBoolExpCount(
          arguments: (json['arguments'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ProductBuyListSelectColumnEnumMap, e,
                  unknownValue: ProductBuyListSelectColumn.artemisUnknown))
              .toList(),
          distinct: json['distinct'] as bool?,
          filter: json['filter'] == null
              ? null
              : ProductBuyListBoolExp.fromJson(
                  json['filter'] as Map<String, dynamic>),
          predicate: IntComparisonExp.fromJson(
              json['predicate'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ProductBuyListAggregateBoolExpCountToJson(
        ProductBuyListAggregateBoolExpCount instance) =>
    <String, dynamic>{
      'arguments': instance.arguments
          ?.map((e) => _$ProductBuyListSelectColumnEnumMap[e]!)
          .toList(),
      'distinct': instance.distinct,
      'filter': instance.filter?.toJson(),
      'predicate': instance.predicate.toJson(),
    };

const _$ProductBuyListSelectColumnEnumMap = {
  ProductBuyListSelectColumn.bought: 'bought',
  ProductBuyListSelectColumn.buyListUuid: 'buy_list_uuid',
  ProductBuyListSelectColumn.createdAt: 'created_at',
  ProductBuyListSelectColumn.priceUuid: 'price_uuid',
  ProductBuyListSelectColumn.productUuid: 'product_uuid',
  ProductBuyListSelectColumn.quantity: 'quantity',
  ProductBuyListSelectColumn.updatedAt: 'updated_at',
  ProductBuyListSelectColumn.uuid: 'uuid',
  ProductBuyListSelectColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

IntComparisonExp _$IntComparisonExpFromJson(Map<String, dynamic> json) =>
    IntComparisonExp(
      $eq: json['_eq'] as int?,
      $gt: json['_gt'] as int?,
      $gte: json['_gte'] as int?,
      $in: (json['_in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      $isNull: json['_is_null'] as bool?,
      $lt: json['_lt'] as int?,
      $lte: json['_lte'] as int?,
      $neq: json['_neq'] as int?,
      $nin: (json['_nin'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$IntComparisonExpToJson(IntComparisonExp instance) =>
    <String, dynamic>{
      '_eq': instance.$eq,
      '_gt': instance.$gt,
      '_gte': instance.$gte,
      '_in': instance.$in,
      '_is_null': instance.$isNull,
      '_lt': instance.$lt,
      '_lte': instance.$lte,
      '_neq': instance.$neq,
      '_nin': instance.$nin,
    };

Float8ComparisonExp _$Float8ComparisonExpFromJson(Map<String, dynamic> json) =>
    Float8ComparisonExp(
      $eq: fromGraphQLFloat8NullableToDartdoubleNullable(json['_eq'] as num?),
      $gt: fromGraphQLFloat8NullableToDartdoubleNullable(json['_gt'] as num?),
      $gte: fromGraphQLFloat8NullableToDartdoubleNullable(json['_gte'] as num?),
      $in: fromGraphQLListNullableFloat8ToDartListNullabledouble(
          json['_in'] as List<num>?),
      $isNull: json['_is_null'] as bool?,
      $lt: fromGraphQLFloat8NullableToDartdoubleNullable(json['_lt'] as num?),
      $lte: fromGraphQLFloat8NullableToDartdoubleNullable(json['_lte'] as num?),
      $neq: fromGraphQLFloat8NullableToDartdoubleNullable(json['_neq'] as num?),
      $nin: fromGraphQLListNullableFloat8ToDartListNullabledouble(
          json['_nin'] as List<num>?),
    );

Map<String, dynamic> _$Float8ComparisonExpToJson(
        Float8ComparisonExp instance) =>
    <String, dynamic>{
      '_eq': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.$eq),
      '_gt': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.$gt),
      '_gte': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.$gte),
      '_in':
          fromDartListNullabledoubleToGraphQLListNullableFloat8(instance.$in),
      '_is_null': instance.$isNull,
      '_lt': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.$lt),
      '_lte': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.$lte),
      '_neq': fromDartdoubleNullableToGraphQLFloat8Nullable(instance.$neq),
      '_nin':
          fromDartListNullabledoubleToGraphQLListNullableFloat8(instance.$nin),
    };

UsersBoolExp _$UsersBoolExpFromJson(Map<String, dynamic> json) => UsersBoolExp(
      $and: (json['_and'] as List<dynamic>?)
          ?.map((e) => UsersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      $not: json['_not'] == null
          ? null
          : UsersBoolExp.fromJson(json['_not'] as Map<String, dynamic>),
      $or: (json['_or'] as List<dynamic>?)
          ?.map((e) => UsersBoolExp.fromJson(e as Map<String, dynamic>))
          .toList(),
      avatarUrl: json['avatarUrl'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['avatarUrl'] as Map<String, dynamic>),
      createdAt: json['createdAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['createdAt'] as Map<String, dynamic>),
      displayName: json['displayName'] == null
          ? null
          : StringComparisonExp.fromJson(
              json['displayName'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : CitextComparisonExp.fromJson(json['email'] as Map<String, dynamic>),
      emailVerified: json['emailVerified'] == null
          ? null
          : BooleanComparisonExp.fromJson(
              json['emailVerified'] as Map<String, dynamic>),
      id: json['id'] == null
          ? null
          : UuidComparisonExp.fromJson(json['id'] as Map<String, dynamic>),
      lastSeen: json['lastSeen'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['lastSeen'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] == null
          ? null
          : TimestamptzComparisonExp.fromJson(
              json['updatedAt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersBoolExpToJson(UsersBoolExp instance) =>
    <String, dynamic>{
      '_and': instance.$and?.map((e) => e.toJson()).toList(),
      '_not': instance.$not?.toJson(),
      '_or': instance.$or?.map((e) => e.toJson()).toList(),
      'avatarUrl': instance.avatarUrl?.toJson(),
      'createdAt': instance.createdAt?.toJson(),
      'displayName': instance.displayName?.toJson(),
      'email': instance.email?.toJson(),
      'emailVerified': instance.emailVerified?.toJson(),
      'id': instance.id?.toJson(),
      'lastSeen': instance.lastSeen?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

CitextComparisonExp _$CitextComparisonExpFromJson(Map<String, dynamic> json) =>
    CitextComparisonExp(
      $eq:
          fromGraphQLCitextNullableToDartStringNullable(json['_eq'] as String?),
      $gt:
          fromGraphQLCitextNullableToDartStringNullable(json['_gt'] as String?),
      $gte: fromGraphQLCitextNullableToDartStringNullable(
          json['_gte'] as String?),
      $ilike: fromGraphQLCitextNullableToDartStringNullable(
          json['_ilike'] as String?),
      $in: fromGraphQLListNullableCitextToDartListNullableString(
          json['_in'] as List<String>?),
      $iregex: fromGraphQLCitextNullableToDartStringNullable(
          json['_iregex'] as String?),
      $isNull: json['_is_null'] as bool?,
      $like: fromGraphQLCitextNullableToDartStringNullable(
          json['_like'] as String?),
      $lt:
          fromGraphQLCitextNullableToDartStringNullable(json['_lt'] as String?),
      $lte: fromGraphQLCitextNullableToDartStringNullable(
          json['_lte'] as String?),
      $neq: fromGraphQLCitextNullableToDartStringNullable(
          json['_neq'] as String?),
      $nilike: fromGraphQLCitextNullableToDartStringNullable(
          json['_nilike'] as String?),
      $nin: fromGraphQLListNullableCitextToDartListNullableString(
          json['_nin'] as List<String>?),
      $niregex: fromGraphQLCitextNullableToDartStringNullable(
          json['_niregex'] as String?),
      $nlike: fromGraphQLCitextNullableToDartStringNullable(
          json['_nlike'] as String?),
      $nregex: fromGraphQLCitextNullableToDartStringNullable(
          json['_nregex'] as String?),
      $nsimilar: fromGraphQLCitextNullableToDartStringNullable(
          json['_nsimilar'] as String?),
      $regex: fromGraphQLCitextNullableToDartStringNullable(
          json['_regex'] as String?),
      $similar: fromGraphQLCitextNullableToDartStringNullable(
          json['_similar'] as String?),
    );

Map<String, dynamic> _$CitextComparisonExpToJson(
        CitextComparisonExp instance) =>
    <String, dynamic>{
      '_eq': fromDartStringNullableToGraphQLCitextNullable(instance.$eq),
      '_gt': fromDartStringNullableToGraphQLCitextNullable(instance.$gt),
      '_gte': fromDartStringNullableToGraphQLCitextNullable(instance.$gte),
      '_ilike': fromDartStringNullableToGraphQLCitextNullable(instance.$ilike),
      '_in':
          fromDartListNullableStringToGraphQLListNullableCitext(instance.$in),
      '_iregex':
          fromDartStringNullableToGraphQLCitextNullable(instance.$iregex),
      '_is_null': instance.$isNull,
      '_like': fromDartStringNullableToGraphQLCitextNullable(instance.$like),
      '_lt': fromDartStringNullableToGraphQLCitextNullable(instance.$lt),
      '_lte': fromDartStringNullableToGraphQLCitextNullable(instance.$lte),
      '_neq': fromDartStringNullableToGraphQLCitextNullable(instance.$neq),
      '_nilike':
          fromDartStringNullableToGraphQLCitextNullable(instance.$nilike),
      '_nin':
          fromDartListNullableStringToGraphQLListNullableCitext(instance.$nin),
      '_niregex':
          fromDartStringNullableToGraphQLCitextNullable(instance.$niregex),
      '_nlike': fromDartStringNullableToGraphQLCitextNullable(instance.$nlike),
      '_nregex':
          fromDartStringNullableToGraphQLCitextNullable(instance.$nregex),
      '_nsimilar':
          fromDartStringNullableToGraphQLCitextNullable(instance.$nsimilar),
      '_regex': fromDartStringNullableToGraphQLCitextNullable(instance.$regex),
      '_similar':
          fromDartStringNullableToGraphQLCitextNullable(instance.$similar),
    };

ProductObjRelInsertInput _$ProductObjRelInsertInputFromJson(
        Map<String, dynamic> json) =>
    ProductObjRelInsertInput(
      data: ProductInsertInput.fromJson(json['data'] as Map<String, dynamic>),
      onConflict: json['on_conflict'] == null
          ? null
          : ProductOnConflict.fromJson(
              json['on_conflict'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductObjRelInsertInputToJson(
        ProductObjRelInsertInput instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
      'on_conflict': instance.onConflict?.toJson(),
    };

ProductOnConflict _$ProductOnConflictFromJson(Map<String, dynamic> json) =>
    ProductOnConflict(
      constraint: $enumDecode(_$ProductConstraintEnumMap, json['constraint'],
          unknownValue: ProductConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$ProductUpdateColumnEnumMap, e,
              unknownValue: ProductUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : ProductBoolExp.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductOnConflictToJson(ProductOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$ProductConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$ProductUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$ProductConstraintEnumMap = {
  ProductConstraint.productPkey: 'product_pkey',
  ProductConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$ProductUpdateColumnEnumMap = {
  ProductUpdateColumn.brand: 'brand',
  ProductUpdateColumn.createdAt: 'created_at',
  ProductUpdateColumn.createdByUserUuid: 'created_by_user_uuid',
  ProductUpdateColumn.imageUrl: 'image_url',
  ProductUpdateColumn.name: 'name',
  ProductUpdateColumn.updatedAt: 'updated_at',
  ProductUpdateColumn.uuid: 'uuid',
  ProductUpdateColumn.weight: 'weight',
  ProductUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

ProductBuyListOnConflict _$ProductBuyListOnConflictFromJson(
        Map<String, dynamic> json) =>
    ProductBuyListOnConflict(
      constraint: $enumDecode(
          _$ProductBuyListConstraintEnumMap, json['constraint'],
          unknownValue: ProductBuyListConstraint.artemisUnknown),
      updateColumns: (json['update_columns'] as List<dynamic>)
          .map((e) => $enumDecode(_$ProductBuyListUpdateColumnEnumMap, e,
              unknownValue: ProductBuyListUpdateColumn.artemisUnknown))
          .toList(),
      where: json['where'] == null
          ? null
          : ProductBuyListBoolExp.fromJson(
              json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductBuyListOnConflictToJson(
        ProductBuyListOnConflict instance) =>
    <String, dynamic>{
      'constraint': _$ProductBuyListConstraintEnumMap[instance.constraint]!,
      'update_columns': instance.updateColumns
          .map((e) => _$ProductBuyListUpdateColumnEnumMap[e]!)
          .toList(),
      'where': instance.where?.toJson(),
    };

const _$ProductBuyListConstraintEnumMap = {
  ProductBuyListConstraint.productBuyListPkey: 'product_buy_list_pkey',
  ProductBuyListConstraint.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

const _$ProductBuyListUpdateColumnEnumMap = {
  ProductBuyListUpdateColumn.bought: 'bought',
  ProductBuyListUpdateColumn.priceUuid: 'price_uuid',
  ProductBuyListUpdateColumn.quantity: 'quantity',
  ProductBuyListUpdateColumn.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

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

UpsertBuyList$MutationRoot$BuyListMutationResponse
    _$UpsertBuyList$MutationRoot$BuyListMutationResponseFromJson(
            Map<String, dynamic> json) =>
        UpsertBuyList$MutationRoot$BuyListMutationResponse()
          ..affectedRows = json['affected_rows'] as int;

Map<String, dynamic> _$UpsertBuyList$MutationRoot$BuyListMutationResponseToJson(
        UpsertBuyList$MutationRoot$BuyListMutationResponse instance) =>
    <String, dynamic>{
      'affected_rows': instance.affectedRows,
    };

UpsertBuyList$MutationRoot _$UpsertBuyList$MutationRootFromJson(
        Map<String, dynamic> json) =>
    UpsertBuyList$MutationRoot()
      ..insertBuyList = json['insert_buy_list'] == null
          ? null
          : UpsertBuyList$MutationRoot$BuyListMutationResponse.fromJson(
              json['insert_buy_list'] as Map<String, dynamic>);

Map<String, dynamic> _$UpsertBuyList$MutationRootToJson(
        UpsertBuyList$MutationRoot instance) =>
    <String, dynamic>{
      'insert_buy_list': instance.insertBuyList?.toJson(),
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

UpsertBuyListArguments _$UpsertBuyListArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpsertBuyListArguments(
      buyList: (json['buyList'] as List<dynamic>)
          .map((e) => BuyListInsertInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpsertBuyListArgumentsToJson(
        UpsertBuyListArguments instance) =>
    <String, dynamic>{
      'buyList': instance.buyList.map((e) => e.toJson()).toList(),
    };
