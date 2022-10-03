// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
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
