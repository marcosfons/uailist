import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    this.textInputAction,
    this.onChanged,
    this.initialValue,
    this.isRequired = true,
    this.controller,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
  });

  final String? initialValue;

  final TextInputAction? textInputAction;

  final Function(String)? onChanged;

  final bool isRequired;

  final AutovalidateMode autovalidateMode;

  final TextEditingController? controller;

  static final _emailRegex =
      RegExp(r'^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$');

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      autofillHints: const [AutofillHints.email],
      keyboardType: TextInputType.emailAddress,
      textInputAction: textInputAction,
      onChanged: onChanged,
      controller: controller,
      autovalidateMode: autovalidateMode,
      validator: (String? email) {
        if (isRequired && (email == null || email.isEmpty)) {
          return 'Email é obrigatório';
        }
        if (email != null ? !_emailRegex.hasMatch(email) : false) {
          return 'Email inválido';
        }
        if (isRequired && (email == null || email.isEmpty)) {
          return 'Email é obrigatório';
        }
        if (email != null ? !_emailRegex.hasMatch(email) : false) {
          return '*';
        }

        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Email',
      ),
    );
  }
}
