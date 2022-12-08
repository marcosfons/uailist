DateTime fromGraphQLTimestamptzToDartDateTime(String timestamp) {
  return DateTime.parse(timestamp);
}

String fromDartDateTimeToGraphQLTimestamptz(DateTime timestamp) {
  return timestamp.toIso8601String();
}

DateTime? fromGraphQLTimestamptzNullableToDartDateTimeNullable(
  String? timestamp,
) {
  return timestamp != null ? DateTime.parse(timestamp) : null;
}

String? fromDartDateTimeNullableToGraphQLTimestamptzNullable(
  DateTime? timestamp,
) {
  return timestamp?.toIso8601String();
}

List<DateTime>? fromGraphQLListNullableTimestamptzToDartListNullableDateTime(
  List<String>? timestamps,
) {
  return timestamps
      ?.map((e) => fromGraphQLTimestamptzToDartDateTime(e))
      .toList();
}

List<String>? fromDartListNullableDateTimeToGraphQLListNullableTimestamptz(
  List<DateTime>? timestamps,
) {
  return timestamps
      ?.map((e) => fromDartDateTimeToGraphQLTimestamptz(e))
      .toList();
}
