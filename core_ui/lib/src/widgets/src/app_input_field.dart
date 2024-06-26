import 'package:flutter/material.dart';

import '../../../core_ui.dart';

class AppInputField extends StatefulWidget {
  final String? title;
  final String? error;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? textValue;
  final int? maxLines;
  final int? maxLength;
  final TextAlign textAlign;

  const AppInputField({
    this.title,
    this.error,
    this.controller,
    this.textValue,
    this.onChanged,
    this.maxLines = 1,
    this.maxLength,
    this.textAlign = TextAlign.center,
    super.key,
  });

  @override
  State<AppInputField> createState() => _AppInputFieldState();
}

class _AppInputFieldState extends State<AppInputField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();

    if (widget.textValue != null) {
      _controller.text = widget.textValue!;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppFonts.primary18.copyWith(
        color: context.theme.colors.primaryText,
      ),
      decoration: InputDecoration(
        labelText: widget.title,
        labelStyle: AppFonts.primary16.copyWith(
          color: context.theme.colors.primaryText,
        ),
        errorText: widget.error,
        errorStyle: AppFonts.primary16.copyWith(
          color: context.theme.colors.error,
        ),
        filled: true,
        fillColor: context.theme.colors.textInputBackground,
      ),
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
      textAlign: widget.textAlign,
      cursorColor: context.theme.colors.accent,
      autocorrect: false,
      controller: _controller,
      onChanged: (String value) => widget.onChanged?.call(value),
    );
  }
}
