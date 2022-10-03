import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/controllers/user_controller.dart';
import 'package:uailist/src/core/logger/logger.dart';
import 'package:uailist/src/screens/profile/profile_controller.dart';
import 'package:uailist/src/screens/profile/widgets/delete_account_confirm_dialog.dart';
import 'package:uailist/src/screens/profile/widgets/select_image_dialog.dart';
import 'package:uailist/src/screens/profile/widgets/user_profile_image.dart';
import 'package:uailist/src/shared/widgets/main_screen_title.dart';

class ProfileScreen extends StatefulHookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final controllerProfile = ref.read(profileController);
    final controllerUser = ref.read(userController);
    final themeData = Theme.of(context);
    final user = controllerUser.currentUser;

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            MainScreenTitle(
              title: 'Perfil',
              trailing: PopupMenuButton(
                position: PopupMenuPosition.over,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: const Text('Excluir conta'),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const DeleteAccoutnConfirmeDialog();
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                const UserProfileImage(radius: 80),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 100),
                  switchInCurve: Curves.easeIn,
                  child: controllerProfile.uploadProgress == null
                      ? FloatingActionButton(
                          onPressed: () {
                            showDialog<String?>(
                              context: context,
                              builder: (context) {
                                return const SelectImageDialog();
                              },
                            ).then((value) {
                              if (value != null) {
                                controllerProfile.changeImage(user.id, value);
                              }
                            });
                          },
                          tooltip: 'Trocar imagem de perfil',
                          backgroundColor: themeData.colorScheme.primary,
                          child: const Icon(Icons.photo_camera, size: 32),
                        )
                      : const SizedBox(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
                right: 10,
                left: 20,
                bottom: 0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.person,
                  size: 30,
                ),
                title: TextFormField(
                  initialValue: user.displayName,
                  readOnly: true,
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.edit),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ElevatedButton(
              onPressed: () async {
                try {
                  GoRouter.of(context).go('/signOut');
                } catch (e) {
                  getLogger().e(e);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: themeData.colorScheme.primary,
                fixedSize: const Size(150, 50),
              ),
              child: const Text(
                'Sair',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
