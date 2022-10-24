double fromGraphQLBigintToDartDouble(num n) => n as double;
double fromDartDoubleToGraphQLBigint(double n) => n;

// TODO(marcosfons): Check if its being used
double? fromGraphQLBigintNullableToDartdoubleNullable(num? n) =>
    n != null ? n as double : null;
num? fromDartdoubleNullableToGraphQLBigintNullable(double? n) => n;
