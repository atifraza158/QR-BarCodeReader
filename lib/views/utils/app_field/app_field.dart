import 'package:flutter/material.dart';
import 'package:qr_code_app/views/utils/app_colors/app_colors.dart';

// ignore: must_be_immutable
class AppField extends StatelessWidget {
  AppField({super.key, required this.controller});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColors.white_color,
        hintText: 'Type Something here...',
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
