import 'package:flutter/material.dart';

import '/utility/theme/app_theme.dart';

class AppSnackBar {
  static void showSnackBar(BuildContext context, IconData icon, String message) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              icon,
              color: AppTheme.accentColor,
            ),
            const SizedBox(
              width: 24,
            ),
            Text(message),
          ],
        ),
      ),
    );
  }
}
