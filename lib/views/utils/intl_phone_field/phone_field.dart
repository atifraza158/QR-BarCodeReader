import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../app_colors/app_colors.dart';

// ignore: must_be_immutable
class PhoneField extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  PhoneField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      initialCountryCode: 'PK',
      controller: controller,
      onChanged: (phone) {
        // controller.text = phone.completeNumber.toString();
      },
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
