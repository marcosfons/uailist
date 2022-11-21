// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:uailist/src/core/services/hasura/parsers/custom_bigint_parser.dart';
import 'package:uailist/src/core/services/hasura/parsers/custom_citext_parser.dart';
import 'package:uailist/src/core/services/hasura/parsers/custom_double_parser.dart';
import 'package:uailist/src/core/services/hasura/parsers/custom_jsonb_parser.dart';
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
        updatedAt,
        uuid,
        weight
      ];
  @override
  Map<String, dynamic> toJson() => _$ProductInsertInputToJson(this);
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
