import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class DateTimeField extends StatefulWidget {
  const DateTimeField({
    super.key,
    required this.dateController,
    required this.hintText,
    required this.suffixIcon,

  });
  final TextEditingController dateController;
  final String? hintText;
  final Widget suffixIcon;

  @override
  State<DateTimeField> createState() => _DateTimeFieldState();
}

class _DateTimeFieldState extends State<DateTimeField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.dateController,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: widget.suffixIcon,
        hintStyle: TextStyle(
          fontSize: 12,
          color: AppColors.bg_grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: AppColors.white_color,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: AppColors.white_color,
          ),
        ),
      ),
    );
  }
}
