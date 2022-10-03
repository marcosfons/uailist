import 'package:flutter/material.dart';

class FutureLoadElevatedButton extends StatefulWidget {
  const FutureLoadElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
    this.loadingWidget = const Center(
      child: SizedBox(
        width: 18,
        height: 18,
        child: CircularProgressIndicator(
          strokeWidth: 0.8,
          color: Colors.white,
        ),
      ),
    ),
  });

  final Future Function() onPressed;

  final Widget child;
  final Widget loadingWidget;
  final ButtonStyle? style;

  @override
  State<FutureLoadElevatedButton> createState() =>
      _FutureLoadElevatedButtonState();
}

class _FutureLoadElevatedButtonState extends State<FutureLoadElevatedButton> {
  Future? _future;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      builder: (context, snapshot) {
        final isLoading = snapshot.connectionState == ConnectionState.waiting;

        return ElevatedButton(
          onPressed: isLoading
              ? null
              : () {
                  _future = widget.onPressed();
                  setState(() {});
                },
          style: widget.style,
          child: isLoading ? widget.loadingWidget : widget.child,
        );
      },
    );
  }
}
