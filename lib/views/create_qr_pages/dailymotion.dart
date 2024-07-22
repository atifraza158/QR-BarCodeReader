import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';

import '../success/success_screen.dart';
import '../utils/app_button/app_button.dart';
import '../utils/app_text/app_text.dart';
import '../utils/big_text_field/big_text_field.dart';

class DailyMotionDetail extends StatelessWidget {
  DailyMotionDetail({super.key});

  final urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "Daily Motion",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              BigTextField(
                controller: urlController,
                hintText: "Daily Motion URL",
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  AppText(title: 'https://', size: 13),
                  SizedBox(width: 10),
                  AppText(title: 'www', size: 13),
                  SizedBox(width: 10),
                  AppText(title: '.com', size: 13),
                ],
              ),
              SizedBox(height: 30),
              AppButton(
                buttonName: "Generate QR",
                onTap: () {
                  Get.to(() => SuccessScreen(
                        data: urlController.text.toString(),
                      ));
                },
                textSize: 13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
