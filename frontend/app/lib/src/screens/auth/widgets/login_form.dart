import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uailist/src/shared/widgets/email_text_form_field.dart';
import 'package:uailist/src/shared/widgets/future_load_elevated_button.dart';
import 'package:uailist/src/shared/widgets/password_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              child: AutofillGroup(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    EmailTextFormField(
                      textInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: 10),
                    PasswordTextFormField(
                      textInputAction: TextInputAction.done,
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
                await Future.delayed(const Duration(seconds: 1));
              },
              child: const Text('Entrar'),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Não possui uma conta?'),
            TextButton(
              onPressed: () {
                GoRouter.of(context).go('/register');
              },
              child: const Text('Registre-se'),
            )
          ],
        )
      ],
    );
  }
}
