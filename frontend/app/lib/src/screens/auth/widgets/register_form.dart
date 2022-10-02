import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uailist/src/screens/auth/auth_controller.dart';
import 'package:uailist/src/shared/widgets/email_text_form_field.dart';
import 'package:uailist/src/shared/widgets/future_load_elevated_button.dart';
import 'package:uailist/src/shared/widgets/password_text_form_field.dart';

class RegisterForm extends StatefulHookConsumerWidget {
  const RegisterForm({super.key});

  @override
  RegisterFormState createState() => RegisterFormState();
}

class RegisterFormState extends ConsumerState<RegisterForm> {
  late final AuthController _controller = ref.read(authController);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: AutofillGroup(
                onDisposeAction: AutofillContextAction.cancel,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      autofillHints: const [AutofillHints.name],
                      decoration: const InputDecoration(
                        label: Text('Nome'),
                      ),
                      textInputAction: TextInputAction.next,
                      autocorrect: false,
                      keyboardType: TextInputType.name,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'O nome é obrigatório';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),
                    EmailTextFormField(
                      initialValue: _controller.email,
                      textInputAction: TextInputAction.next,
                      onChanged: _controller.changeEmail,
                    ),
                    const SizedBox(height: 10),
                    PasswordTextFormField(
                      initialValue: _controller.password,
                      textInputAction: TextInputAction.done,
                      onChanged: _controller.changePassword,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FutureLoadElevatedButton(
              onPressed: () async {
                if (formKey.currentState?.validate() ?? false) {
                  final router = GoRouter.of(context);
                  final result = await _controller.signInWithEmailAndPassword();

                  if (result && mounted) {
                    router.go('/lists');
                  }
                }
              },
              child: const Text('Registrar'),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Já possui uma conta?'),
            TextButton(
              onPressed: () {
                router.go('/login');
              },
              child: const Text('Entre'),
            )
          ],
        )
      ],
    );
  }
}
