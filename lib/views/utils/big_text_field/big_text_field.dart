import 'package:flutter/material.dart';

import '../app_colors/app_colors.dart';

class BigTextField extends StatelessWidget {
  const BigTextField({
    super.key,
    required this.controller,
    this.hintText,
    this.maxLines,
    this.suffix,
    this.keyboardType,

  });
  final TextEditingController controller;
  final String? hintText;
  final int? maxLines;
  final IconData? suffix;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        fillColor: AppColors.white_color,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          color: AppColors.bg_grey,
        ),
        filled: true,
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
