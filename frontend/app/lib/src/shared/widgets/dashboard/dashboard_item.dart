import 'package:flutter/material.dart';

class DashboardItem {
  final String path;

  final String name;
  final IconData? icon;
  final Widget? iconWidget;

  final bool Function(String currentPath, String targetPath) compareRoutePath;

  const DashboardItem({
    required this.path,
    required this.name,
    this.icon,
    this.iconWidget,
    this.compareRoutePath = _defaultPathCompare,
  }) : assert((icon != null && iconWidget == null) ||
            (icon == null && iconWidget != null));

  static bool _defaultPathCompare(String currentPath, String targetPath) {
    return currentPath.startsWith(targetPath);
  }
}
