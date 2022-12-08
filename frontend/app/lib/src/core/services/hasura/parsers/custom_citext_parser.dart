String fromGraphQLCitextToDartString(String text) {
  return text;
}

String fromDartStringToGraphQLCitext(String text) => text;

String? fromGraphQLCitextNullableToDartStringNullable(String? text) {
  return text;
}

String? fromDartStringNullableToGraphQLCitextNullable(String? text) => text;

List<String>? fromGraphQLListNullableCitextToDartListNullableString(
  List<String>? citexts,
) {
  return citexts?.map(fromGraphQLCitextToDartString).toList();
}

List<String>? fromDartListNullableStringToGraphQLListNullableCitext(
  List<String>? citexts,
) {
  return citexts?.map(fromDartStringToGraphQLCitext).toList();
}
