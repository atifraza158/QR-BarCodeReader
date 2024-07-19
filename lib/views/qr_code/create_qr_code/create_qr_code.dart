import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/controller/qr_controller.dart';
import 'package:qr_code_app/views/utils/app_colors/app_colors.dart';
import 'package:qr_code_app/views/utils/app_text/app_text.dart';

// ignore: must_be_immutable
class CreateQrCode extends StatelessWidget {
  CreateQrCode({super.key});

  QrController qrController = Get.put(QrController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg_color,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: GridView.builder(
          itemCount: qrController.optionsData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return optionsCard(
              "${qrController.optionsData[index]['text']}",
              () {},
              qrController.optionsData[index]['icon'],
            );
          },
        ),
      ),
    );
  }

  Widget optionsCard(String text, VoidCallback onTap, IconData icon) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: AppColors.white_color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(66, 66, 66, 0.145),
              offset: Offset(0, 10),
              blurRadius: 20,
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary_bg_color,
                ),
                child: Icon(
                  icon,
                  color: AppColors.primary_color,
                ),
              ),
              Center(
                  child: AppText(
                title: text,
                size: 12,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
