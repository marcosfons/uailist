import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/screens/auth/auth_controller.dart';
import 'package:uailist/src/shared/widgets/email_text_form_field.dart';
import 'package:uailist/src/shared/widgets/future_load_elevated_button.dart';
import 'package:uailist/src/shared/widgets/password_text_form_field.dart';

class LoginForm extends StatefulHookConsumerWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends ConsumerState<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late final AuthController controller = ref.read(authController);

  Future login() async {
    // TODO(marcosfons): Return with early login form validation
    if (_formKey.currentState?.validate() ?? false) {
      final result = await controller.signInWithEmailAndPassword();
      if (result && mounted) {
        GoRouter.of(context).go('/lists');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 450),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: AutofillGroup(
                    onDisposeAction: AutofillContextAction.cancel,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        EmailTextFormField(
                          textInputAction: TextInputAction.next,
                          onChanged: controller.changeEmail,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                        ),
                        const SizedBox(height: 10),
                        PasswordTextFormField(
                          textInputAction: TextInputAction.done,
                          autovalidateMode: AutovalidateMode.disabled,
                          onChanged: controller.changePassword,
                          onFieldSubmitted: (_) => login(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            ValueListenableBuilder(
              valueListenable: controller.errorListener,
              builder: (BuildContext context, String? error, Widget? child) {
                if (error == null) {
                  return const SizedBox();
                }

                return Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      error,
                      textAlign: TextAlign.right,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: FutureLoadElevatedButton(
                  onPressed: login,
                  child: const Text('Entrar'),
                ),
              ),
            ),
            // GoogleButton(
            //   onPressed: controller.signInWithGoogle,
            // ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Não possui uma conta?'),
                TextButton(
                  onPressed: () => GoRouter.of(context).go('/register'),
                  child: const Text('Registre-se'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
