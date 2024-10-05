import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/utility/theme/app_theme.dart';
import '/widget/app_snack_bar.dart';

class AppTextField extends StatefulWidget {
  final int maxLength;
  final int? maxLines;
  final String hintText;
  final TextEditingController controller;
  const AppTextField({
    super.key,
    required this.maxLength,
    this.maxLines,
    required this.hintText,
    required this.controller,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: _focusNode,
      onEditingComplete: () => FocusScope.of(context).nextFocus(),
      controller: widget.controller,
      maxLength: widget.maxLength,
      maxLines: widget.maxLines,
      keyboardType: TextInputType.multiline,
      cursorColor: AppTheme.accentColor,
      style: AppTheme.textFieldStyle,
      decoration: InputDecoration(
        hintStyle: AppTheme.textFieldHintStyle,
        hintText: widget.hintText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.accentColor,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppTheme.onPrimaryColor,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            if (widget.controller.text.isNotEmpty) {
              copyToClipBoard(
                context,
                widget.controller.text,
              );
            }
          },
          color: AppTheme.onPrimaryColor,
          disabledColor: AppTheme.onPrimaryColor,
          splashColor: AppTheme.accentColor,
          splashRadius: 24,
          icon: const Icon(
            Icons.content_copy_rounded,
            size: 24,
          ),
        ),
        counterStyle: AppTheme.textFieldCounterStyle,
      ),
    );
  }

  void copyToClipBoard(context, String text) {
    Clipboard.setData(
      ClipboardData(text: text),
    );
    AppSnackBar.showSnackBar(context, Icons.content_copy, "Copied to clipboard");
  }
}
