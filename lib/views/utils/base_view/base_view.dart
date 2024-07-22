import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_colors/app_colors.dart';
import '../app_text/app_text.dart';

class BaseView extends StatelessWidget {
  const BaseView({
    super.key,
    required this.appbarText,
    required this.child,
  });
  final String appbarText;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary_bg_color,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary_bg_color,
        title: AppText(
          title: appbarText,
          size: 14,
          fontWeight: FontWeight.w500,
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
            color: AppColors.primary_color,
          ),
        ),
      ),
      body: child,
    );
  }
}
