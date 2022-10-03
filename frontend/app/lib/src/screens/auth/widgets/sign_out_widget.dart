import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/core/controllers/user_controller.dart';

class SignOutWidget extends StatefulHookConsumerWidget {
  const SignOutWidget({super.key});

  @override
  SignOutWidgetState createState() => SignOutWidgetState();
}

class SignOutWidgetState extends ConsumerState<SignOutWidget> {
  late final controller = ref.read(userController);

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 200), () {
      controller.signOut().whenComplete(() {
        GoRouter.of(context).go('/login');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Saindo',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
        ),
      ),
    );
  }
}
