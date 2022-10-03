import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/controllers/user_controller.dart';
import 'package:uailist/src/screens/profile/profile_controller.dart';

class UserProfileImage extends HookConsumerWidget {
  const UserProfileImage({super.key, required this.radius});

  final double radius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controllerProfile = ref.watch(profileController);
    final controllerUser = ref.watch(userController);
    final user = controllerUser.currentUser;

    final size = radius * 2;

    final progress = controllerProfile.uploadProgress;
    final image = controllerProfile.sendingImageBytes;

    return CachedNetworkImage(
      imageUrl: user.avatarUrl,
      width: size,
      height: size,
      fadeInDuration: Duration(milliseconds: image == null ? 250 : 150),
      progressIndicatorBuilder: (context, _, __) {
        return _FrameMemoryImageWidget(
          image: image,
          progress: progress ?? 1,
          radius: radius,
        );
      },
      imageBuilder: (context, imageProvider) {
        return DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(image: imageProvider),
            shape: BoxShape.circle,
          ),
          child: _FrameMemoryImageWidget(
            image: image,
            progress: progress ?? 1,
            radius: radius,
          ),
        );
      },
    );
  }
}

class _FrameMemoryImageWidget extends StatelessWidget {
  const _FrameMemoryImageWidget({
    required this.image,
    required this.progress,
    required this.radius,
  });

  final Uint8List? image;
  final double progress;
  final double radius;

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return const SizedBox();
    }
    return Image.memory(
      image!,
      fit: BoxFit.cover,
      alignment: Alignment.centerLeft,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        return ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: progress,
            child: child,
          ),
        );
      },
    );
  }
}
