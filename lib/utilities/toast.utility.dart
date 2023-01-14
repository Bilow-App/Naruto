// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:cherry_toast/cherry_toast.dart';
import 'package:cherry_toast/resources/arrays.dart';

// 🌎 Project imports:
import 'package:starter/abstracts/abstracts.dart';

class ToastUtility implements ToastUtilityAbstract {
  @override
  void show(
    BuildContext context, {
    ToastType type = ToastType.info,
    required String title,
    String? action,
    Function? actionHandler,
    String? description,
  }) {
    switch (type) {
      case ToastType.error:
        CherryToast.error(
          title: Text(title),
          action: action != null ? Text(action) : null,
          actionHandler: actionHandler,
          animationType: AnimationType.fromTop,
          description: description != null ? Text(description) : null,
        ).show(context);
        break;
      case ToastType.info:
        CherryToast.info(
          title: Text(title),
          action: action != null ? Text(action) : null,
          actionHandler: actionHandler,
          animationType: AnimationType.fromTop,
          description: description != null ? Text(description) : null,
        ).show(context);
        break;
      case ToastType.success:
        CherryToast.success(
          title: Text(title),
          action: action != null ? Text(action) : null,
          actionHandler: actionHandler,
          animationType: AnimationType.fromTop,
          description: description != null ? Text(description) : null,
        ).show(context);
        break;
      case ToastType.warning:
        CherryToast.warning(
          title: Text(title),
          action: action != null ? Text(action) : null,
          actionHandler: actionHandler,
          animationType: AnimationType.fromTop,
          description: description != null ? Text(description) : null,
        ).show(context);
        break;
    }
  }
}
