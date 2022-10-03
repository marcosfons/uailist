import 'package:uuid/uuid.dart';


String fromGraphQLUuidToDartString(String uuid) {
  Uuid.isValidOrThrow(fromString: uuid);
  return uuid;
}

String fromDartStringToGraphQLUuid(String uuid) => uuid;

String? fromGraphQLUuidNullableToDartStringNullable(String? uuid) {
  if (uuid == null) {
    return null;
  }

  Uuid.isValidOrThrow(fromString: uuid);
  return uuid;
}

String? fromDartStringNullableToGraphQLUuidNullable(String? uuid) => uuid;