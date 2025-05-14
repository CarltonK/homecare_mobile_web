import 'package:flutter/material.dart';
import './../../../../core/core.dart';

class ExitConfirmationDialog extends StatelessWidget {
  final String title;
  final String message;
  final String confirmText;
  final String cancelText;
  final Color confirmColor;
  final Color cancelColor;

  const ExitConfirmationDialog({
    super.key,
    this.title = 'Exit App',
    this.message = 'Are you sure you want to exit?',
    this.confirmText = 'Exit',
    this.cancelText = 'Cancel',
    this.confirmColor = Colors.red,
    this.cancelColor = Colors.blue,
  });

  static Future<bool> show(
    BuildContext context, {
    String title = 'Exit App',
    String message = 'Are you sure you want to exit?',
    String confirmText = 'Exit',
    String cancelText = 'Cancel',
    Color confirmColor = Colors.red,
    Color cancelColor = Colors.blue,
  }) async {
    return await showDialog(
          context: context,
          builder: (context) => ExitConfirmationDialog(
            title: title,
            message: message,
            confirmText: confirmText,
            cancelText: cancelText,
            confirmColor: confirmColor,
            cancelColor: cancelColor,
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title, style: kNormalBlack),
      content: Text(message, style: kLightBlack),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          style: TextButton.styleFrom(foregroundColor: cancelColor),
          child: Text(cancelText),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          style: TextButton.styleFrom(foregroundColor: confirmColor),
          child: Text(confirmText),
        ),
      ],
    );
  }
}
