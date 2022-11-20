import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/controllers/user_controller.dart';
import 'package:uailist/src/core/logger/logger.dart';
import 'package:uailist/src/screens/profile/profile_controller.dart';
import 'package:uailist/src/screens/profile/widgets/delete_account_confirm_dialog.dart';
import 'package:uailist/src/shared/widgets/select_image_dialog.dart';
import 'package:uailist/src/screens/profile/widgets/user_profile_image.dart';
import 'package:uailist/src/shared/widgets/future_load_elevated_button.dart';
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
        child: ListView(
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
            Center(
              child: Stack(
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
            ),
            const SizedBox(
              height: 20,
            ),
            _EditableTextField(
              initialValue: user.displayName,
              icon: const Icon(Icons.person, size: 30),
              label: 'Nome',
              onConfirm: controllerProfile.changeUserName,
            ),
            // _EditableTextField(
            //   initialValue: user.email,
            //   icon: const Icon(Icons.person, size: 30),
            //   label: 'Email',
            //   onConfirm: controllerProfile.changeUserEmail,
            // ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: ElevatedButton(
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
            ),
          ],
        ),
      ),
    );
  }
}

class _EditableTextField extends StatefulWidget {
  const _EditableTextField({
    required this.initialValue,
    required this.icon,
    required this.label,
    required this.onConfirm,
  });

  final String initialValue;
  final Widget icon;
  final String label;
  final Future Function(String newValue) onConfirm;

  @override
  State<_EditableTextField> createState() => _EditableTextFieldState();
}

class _EditableTextFieldState extends State<_EditableTextField> {
  bool _editing = false;

  late final _controller = TextEditingController(text: widget.initialValue);
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant _EditableTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialValue != oldWidget.initialValue) {
      _controller.text = widget.initialValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 35,
        right: 10,
        left: 10,
      ),
      child: ListTile(
        leading: const Icon(
          Icons.person,
          size: 30,
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextFormField(
              focusNode: _focusNode,
              controller: _controller,
              readOnly: !_editing,
              decoration: InputDecoration(
                labelText: widget.label,
              ),
            ),
            if (_editing)
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: FutureLoadElevatedButton(
                    onPressed: () async {
                      await widget.onConfirm(_controller.text);
                      if (mounted) {
                        setState(() {
                          _editing = false;
                        });
                      }
                    },
                    loadingWidget: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 2,
                      ),
                      child: SizedBox(
                        width: 15,
                        height: 15,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 1,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 6,
                      ),
                    ),
                    child: const Text('Confirmar'),
                  ),
                ),
              ),
          ],
        ),
        trailing: IconButton(
          icon: _editing ? const Icon(Icons.close) : const Icon(Icons.edit),
          iconSize: 30,
          onPressed: () {
            setState(() {
              _editing = !_editing;
            });
            if (_editing) {
              _focusNode.requestFocus();
            }
          },
        ),
      ),
    );
  }
}
