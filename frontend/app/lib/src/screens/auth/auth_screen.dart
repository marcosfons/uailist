import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:uailist/src/screens/auth/widgets/login_form.dart';
import 'package:uailist/src/screens/auth/widgets/register_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _showLogin = false;

  void _toggleLogin() {
    setState(() => _showLogin = !_showLogin);
  }

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
          PageTransitionSwitcher(
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
              return SharedAxisTransition(
                animation: primaryAnimation,
                secondaryAnimation: secondaryAnimation,
                transitionType: SharedAxisTransitionType.horizontal,
                fillColor: theme.backgroundColor,
                child: child,
              );
            },
            duration: const Duration(milliseconds: 280),
            child: _showLogin
                ? LoginForm(onRegister: _toggleLogin)
                : RegisterForm(onLogin: _toggleLogin),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
