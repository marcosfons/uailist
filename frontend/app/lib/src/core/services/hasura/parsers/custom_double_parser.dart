double fromGraphQLFloat8ToDartDouble(num n) => n.toDouble();
double fromDartDoubleToGraphQLFloat8(double n) => n;

// TODO(marcosfons): Check if its being used
double? fromGraphQLFloat8NullableToDartdoubleNullable(num? n) => n?.toDouble();
num? fromDartdoubleNullableToGraphQLFloat8Nullable(double? n) => n;

List<double>? fromGraphQLListNullableFloat8ToDartListNullabledouble(
  List<num>? numbers,
) {
  return numbers?.map(fromGraphQLFloat8ToDartDouble).toList();
}

List<double>? fromDartListNullabledoubleToGraphQLListNullableFloat8(
  List<double>? numbers,
) {
  return numbers?.map(fromDartDoubleToGraphQLFloat8).toList();
}
