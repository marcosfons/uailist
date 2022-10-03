import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    super.key,
    this.textInputAction,
    this.onChanged,
    this.initialValue,
    this.isRequired = true,
  });

  final String? initialValue;

  final TextInputAction? textInputAction;

  final Function(String)? onChanged;

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
        if (password != null && password.length < 8) {
          return 'Senha curta';
        }
        return null;
      },
      onChanged: widget.onChanged,
      obscureText: _showPassword == false ? true : false,
    );
  }
}
