import 'package:intl/intl.dart';

final dateFormatter = DateFormat('yyyy-MM-dd');
final timeFormatter = DateFormat('HH:mm:ss');

DateTime fromGraphQLDateToDartDateTime(String date) => DateTime.parse(date);
String fromDartDateTimeToGraphQLDate(DateTime date) =>
    dateFormatter.format(date);

// TODO(marcosfons): Check if its being used
DateTime? fromGraphQLDateNullableToDartDateTimeNullable(String? date) => 
  date != null ? DateTime.parse(date) : null;
String? fromDartDateTimeNullableToGraphQLDateNullable(DateTime? date) => 
  date != null ? dateFormatter.format(date) : null;