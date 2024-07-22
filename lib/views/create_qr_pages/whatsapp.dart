import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';
import 'package:qr_code_app/views/utils/intl_phone_field/phone_field.dart';
import '../success/success_screen.dart';
import '../utils/app_button/app_button.dart';

class WhatsappDetail extends StatelessWidget {
  WhatsappDetail({super.key});

  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "Whatsapp",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              PhoneField(controller: phoneController),
              SizedBox(height: 30),
              AppButton(
                buttonName: "Generate QR",
                onTap: () {
                  Get.to(
                    () => SuccessScreen(
                      data: phoneController.text.toString(),
                    ),
                  );
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
