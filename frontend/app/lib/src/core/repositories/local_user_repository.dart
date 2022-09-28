import 'package:uailist/src/core/models/user_data.dart';

abstract class LocalUserRepository {
  Future<UserData?> saveUser();

  /// Watch the current user signed in
  Stream<UserData?> watchLocalCurrentUser();

  /// Deletes the current user in the local storage
  Future<void> deleteUser();
}
