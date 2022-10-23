import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    super.key,
    this.textInputAction,
    this.onChanged,
    this.initialValue,
    this.isRequired = true,
    this.autovalidateMode,
  });

  final String? initialValue;

  final TextInputAction? textInputAction;

  final Function(String)? onChanged;

  final AutovalidateMode? autovalidateMode;

  final bool isRequired;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      autofillHints: const [AutofillHints.password],
      textInputAction: widget.textInputAction,
      autovalidateMode: widget.autovalidateMode,
      decoration: InputDecoration(
        label: const Text('Senha'),
        suffixIcon: IconButton(
          icon: Icon(
            _showPassword ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _showPassword = !_showPassword;
            });
          },
        ),
      ),
      validator: (String? password) {
        if (widget.isRequired && (password == null || password.isEmpty)) {
          return 'A senha é obrigatória';
        }

        const invalidPasswordMessage =
            'Senha inválida\n  Ter pelo menos 8 caracteres;\n  Ter uma letra maiúscula;\n  Ter um símbolo;\n  Ter uma letra minúscula.';
        if (password != null && password.length < 8) {
          return invalidPasswordMessage;
        } else if (!RegExp(r'[A-Z]').hasMatch(password!)) {
          return invalidPasswordMessage;
        } else if (!RegExp(r'[a-z]').hasMatch(password)) {
          return invalidPasswordMessage;
        } else if (!RegExp(r'[#?!@$%^&*-]').hasMatch(password)) {
          return invalidPasswordMessage;
        } else if (!RegExp(r'[0-9]').hasMatch(password)) {
          return invalidPasswordMessage;
        }

        return null;
      },
      onChanged: widget.onChanged,
      obscureText: _showPassword == false ? true : false,
    );
  }
}
