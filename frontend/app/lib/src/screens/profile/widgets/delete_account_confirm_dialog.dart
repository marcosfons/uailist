import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/controllers/user_controller.dart';
import 'package:uailist/src/screens/profile/profile_controller.dart';
import 'package:uailist/src/shared/widgets/future_load_elevated_button.dart';

class DeleteAccoutnConfirmeDialog extends ConsumerWidget {
  const DeleteAccoutnConfirmeDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(profileController);
    final controllerUser = ref.read(userController);

    return AlertDialog(
      title: const Text('Tem certeza?'),
      content: const Text('Isso irá apagar todos os seus dados'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancelar',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        FutureLoadElevatedButton(
          onPressed: () async {
            final result =
                await controller.deleteUser(controllerUser.currentUser.id);
            if (result) {
              GoRouter.of(context).go('/signOut');
            }
          },
          child: const Text('Deletar'),
        ),
      ],
    );
  }
}
