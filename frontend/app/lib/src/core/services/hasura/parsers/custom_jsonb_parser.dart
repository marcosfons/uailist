import 'dart:convert';

Map fromGraphQLJsonbToDartMap(String json) {
  return jsonDecode(json);
}

String fromDartMapToGraphQLJsonb(Map json) => jsonEncode(json);

Map? fromGraphQLJsonbNullableToDartMapNullable(String? json) {
  return json != null ? jsonDecode(json) : null;
}

String? fromDartMapNullableToGraphQLJsonbNullable(Map? json) =>
    json != null ? jsonEncode(json) : null;
