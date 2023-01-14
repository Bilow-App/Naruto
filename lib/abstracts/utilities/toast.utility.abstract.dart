// 🐦 Flutter imports:
import 'package:flutter/material.dart';

abstract class ToastUtilityAbstract {
  void show(
    BuildContext context, {
    ToastType type = ToastType.info,
    required String title,
    String? action,
    Function? actionHandler,
    String? description,
  });
}

enum ToastType {
  error,
  info,
  success,
  warning,
}
