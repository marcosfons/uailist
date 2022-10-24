double fromGraphQLFloat8ToDartDouble(num n) => n as double;
double fromDartDoubleToGraphQLFloat8(double n) => n;

// TODO(marcosfons): Check if its being used
double? fromGraphQLFloat8NullableToDartdoubleNullable(num? n) =>
    n != null ? n as double : null;
num? fromDartdoubleNullableToGraphQLFloat8Nullable(double? n) => n;
