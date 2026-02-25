import 'dart:async';

import 'package:flutter/material.dart';

class ProgressFuture {
  BuildContext? _dialogContext;
  bool _dismissed = false;

  void _bindDialogContext(BuildContext context) {
    _dialogContext = context;
  }

  void dismiss({bool showAnim = true}) {
    if (_dismissed) return;
    final ctx = _dialogContext;
    if (ctx != null && Navigator.of(ctx).canPop()) {
      Navigator.of(ctx).pop();
    }
    _dismissed = true;
  }
}

ProgressFuture showProgressDialog({
  required BuildContext context,
  String? loadingText,
  Widget? loadingWidget,
  bool barrierDismissible = false,
}) {
  final progress = ProgressFuture();

  unawaited(showDialog<void>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (dialogContext) {
      progress._bindDialogContext(dialogContext);
      return WillPopScope(
        onWillPop: () async => barrierDismissible,
        child: AlertDialog(
          content: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              loadingWidget ?? const CircularProgressIndicator(),
              const SizedBox(width: 12),
              Expanded(child: Text(loadingText ?? "Loading...")),
            ],
          ),
        ),
      );
    },
  ));

  return progress;
}
