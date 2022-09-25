import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key, required this.form});

  final Widget form;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Text(
                'UaiList',
                style: TextStyle(
                  color: theme.colorScheme.primary,
                  fontSize: 50,
                ),
              ),
            ),
          ),
          IntrinsicHeight(
            child: form,
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
