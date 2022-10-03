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
