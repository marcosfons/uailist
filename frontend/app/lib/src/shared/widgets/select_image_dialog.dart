import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uailist/src/core/logger/logger.dart';

class SelectImageDialog extends StatefulWidget {
  const SelectImageDialog({Key? key}) : super(key: key);

  @override
  State<SelectImageDialog> createState() => _SelectImageDialogState();
}

class _SelectImageDialogState extends State<SelectImageDialog> {
  Future pickImage(ImageSource source, Color primaryColor) async {
    try {
      final XFile? image = await ImagePicker().pickImage(
        source: source,
        imageQuality: 99,
      );
      if (image != null) {
        final croppedFile = await cropImage(image.path, primaryColor);

        close(imagePath: croppedFile?.path);
        return;
      }
    } catch (e) {
      getLogger().e(
        e,
        source == ImageSource.camera
            ? 'error_taking_profile_picture'
            : 'error_picking_gallery_profile_picture',
      );
      // final message = source == ImageSource.camera
      //     ? 'tirar a foto com a câmera'
      //     : 'selecionar a imagem pela galeria';
      // Get.snackbar(
      //   'Tente novamente',
      //   'Ocorreu um erro ao $message',
      //   colorText: Colors.white,
      //   backgroundColor: const Color(0xffDC4740),
      // );
    }
    close();
    return;
  }

  void close({String? imagePath}) {
    if (mounted) {
      Navigator.of(context).pop(imagePath);
    }
  }

  Future<CroppedFile?> cropImage(String filePath, Color primaryColor) async {
    try {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: filePath,
        compressQuality: 60,
        aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Ajuste a imagem',
            toolbarColor: Colors.white,
            toolbarWidgetColor: Colors.black,
            lockAspectRatio: true,
            activeControlsWidgetColor: primaryColor,
          ),
          IOSUiSettings(
            title: 'Ajuste a imagem',
          ),
        ],
      );

      return croppedFile;
    } catch (e) {
      getLogger().e(e, 'error_cropping_profile_picture');
      // Get.snackbar(
      //   'Tente novamente',
      //   'Ocorreu um erro ao cortar a imagem',
      //   colorText: Colors.white,
      //   backgroundColor: const Color(0xffDC4740),
      // );
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;

    return SimpleDialog(
      children: [
        ListTile(
          leading: const Icon(Icons.camera),
          title: const Text('Tirar com a câmera'),
          onTap: () {
            pickImage(ImageSource.camera, primaryColor);
          },
        ),
        ListTile(
          leading: const Icon(Icons.image_outlined),
          title: const Text('Selecionar na galeria'),
          onTap: () {
            pickImage(ImageSource.gallery, primaryColor);
          },
        )
      ],
    );
  }
}
