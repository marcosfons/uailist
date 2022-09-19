import 'package:flutter/material.dart';
import 'package:uailist/src/shared/widgets/email_text_form_field.dart';
import 'package:uailist/src/shared/widgets/password_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.onRegister});

  final Function() onRegister;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final bool _showPassword = false;

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
            child: ElevatedButton(
              onPressed: () => {},
              child: const Text('Entrar'),
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Não possui uma conta?'),
            TextButton(
              onPressed: widget.onRegister,
              child: const Text('Registre-se'),
            )
          ],
        )
      ],
    );
  }
}
