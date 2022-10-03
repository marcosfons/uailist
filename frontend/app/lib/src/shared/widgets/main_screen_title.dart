import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MainScreenTitle extends StatelessWidget {
  const MainScreenTitle({
    super.key,
    required this.title,
    this.leading,
    this.trailing,
    this.centered = true,
  }) : assert(centered || leading == null);

  final String title;

  final bool centered;

  final Widget? leading;

  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        top: 28,
        right: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (leading != null)
            leading!
          else if (centered && trailing != null)
            Opacity(
              opacity: 0,
              child: IgnorePointer(
                child: trailing!,
              ),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: AutoSizeText(
                title,
                textAlign: centered ? TextAlign.center : TextAlign.left,
                maxLines: 1,
                style: themeData.textTheme.headline6,
              ),
            ),
          ),
          if (trailing != null)
            trailing!
          else if (leading != null)
            Opacity(
              opacity: 0,
              child: IgnorePointer(
                child: leading!,
              ),
            ),
        ],
      ),
    );
  }
}
