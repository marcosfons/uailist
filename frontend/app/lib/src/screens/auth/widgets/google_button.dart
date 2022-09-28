import 'package:flutter/material.dart';
import 'package:uailist/src/shared/widgets/future_load_elevated_button.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    required this.onPressed,
  });

  final Future Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: FutureLoadElevatedButton(
        onPressed: onPressed,
        child: const Text('Google'),
      ),
    );
  }
}
