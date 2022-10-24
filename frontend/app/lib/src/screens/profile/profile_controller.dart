import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/database/app_database.dart';
import 'package:uailist/src/core/services/hasura/hasura_client.dart';
import 'package:uailist/src/screens/auth/auth_controller.dart';
import 'package:uailist/src/screens/profile/profile_service.dart';

final profileController = ChangeNotifierProvider((ref) {
  return ProfileController(
    ProfileService(
      ref.read(hasuraClientProvider),
      ref.read(nhostProvider),
      ref.read(databaseProvider),
    ),
  );
});

class ProfileController extends ChangeNotifier {
  final ProfileService _profileService;

  double? _progress;
  Uint8List? _sendingImageBytes;

  ProfileController(this._profileService);

  double? get uploadProgress => _progress;
  Uint8List? get sendingImageBytes => _sendingImageBytes;

  Future<void> changeImage(String userId, String imagePath) async {
    final result = await _profileService.changeUserImage(
      userId,
      imagePath,
      onProgress: (progress) {
        _progress = progress;
        notifyListeners();
      },
      onImageBytes: (imageBytes) {
        _sendingImageBytes = imageBytes;
        notifyListeners();
      },
    );
  }

  Future<void> changeUserName(String newUserName) async {
    final result = await _profileService.changeUserName(
      newUserName,
    );
  }

  Future<void> changeUserEmail(String newUserName) async {
    final result = await _profileService.changeUserEmail(
      newUserName,
    );
  }

  Future<bool> deleteUser(String userId) async {
    final response = await _profileService.deleteUser(userId);
    return response == null;
  }
}
