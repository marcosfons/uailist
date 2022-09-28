// import 'dart:async';

// import 'package:uailist/src/core/models/user_auth.dart';
// import 'package:uailist/src/core/repositories/auth_repository.dart';
// import 'package:uailist/src/core/repositories/local_user_repository.dart';

// // final userController = Provider.autoDispose((ref) {
// //   final userController = UserController(
// //     ref.read(firebaseAuthProvider),
// //   );

// //   ref.onDispose(userController.dispose);

// //   return userController;
// // });

// class UserController {
//   final AuthRepository _authRepository;
//   final LocalUserRepository _localUserRepository;

//   late final StreamSubscription<UserAuth?> _subscriptionUserAuthData;

//   UserController(this._authRepository, this._localUserRepository) {

//     Stream.

//     _subscriptionUserAuthData =
//         _authRepository.watchCurrentUserAuth().listen((userAuthData) {
//       if (userAuthData != null) {
//         print('Has user');
//       } else {
//         print('Not signed in');
//       }
//     });
//   }

//   void dispose() {
//     _subscriptionUserAuthData.cancel();
//   }
// }
