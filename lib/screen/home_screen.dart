import 'package:flutter/material.dart';

import '/utility/theme/app_theme.dart';
import '/widget/app_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appMainButton(() {}, "New File"),
                appMainButton(null, "Save File"),
                Row(
                  children: [
                    appActionButton(() => null, Icons.file_upload),
                    const SizedBox(width: 6),
                    appActionButton(() => null, Icons.folder),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            AppTextField(
              maxLength: 128,
              maxLines: 3,
              hintText: "Enter video title",
              controller: titleController,
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton appMainButton(Function()? onPressed, String label) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.accentColor,
        foregroundColor: AppTheme.primaryColor,
        disabledBackgroundColor: AppTheme.onPrimaryColor,
        disabledForegroundColor: AppTheme.primaryColor,
        disabledMouseCursor: SystemMouseCursors.forbidden,
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: AppTheme.primaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  IconButton appActionButton(Function()? onPressed, IconData icon) {
    return IconButton(
      onPressed: onPressed,
      splashRadius: 24,
      splashColor: AppTheme.accentColor,
      icon: Icon(
        icon,
        color: AppTheme.onPrimaryColor,
      ),
    );
  }
}
