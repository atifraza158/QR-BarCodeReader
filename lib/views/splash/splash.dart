import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/controller/splash_controller.dart';
import 'package:qr_code_app/views/utils/app_text/app_text.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppText(
          title: "QR Code Reader",
        ),
      ),
    );
  }
}
