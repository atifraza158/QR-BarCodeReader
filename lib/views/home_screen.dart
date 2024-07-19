import 'package:flutter/material.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:qr_code_app/views/bar_code/create_barcode/create_barcode.dart';
import 'package:qr_code_app/views/utils/app_colors/app_colors.dart';
import 'package:qr_code_app/views/utils/app_text/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.bg_color,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: qrCard(
                      "Scan QR Code",
                      'assets/images/qr_scan.png',
                      () {},
                      tileColor: Colors.lightGreen,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: qrCard(
                      "Create QR Code",
                      'assets/images/qr_scan.png',
                      () {},
                      tileColor: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Get.to(() => CreateBarcode());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.primary_color,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        child: Image.asset(
                          "assets/images/barcode.png",
                        ),
                      ),
                      SizedBox(width: 20),
                      AppText(
                        title: "Create Barcode",
                        size: 16,
                        color: AppColors.white_color,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.primary_color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          onPressed: () {},
          child: Icon(Octicons.device_camera),
        ),
      ),
    );
  }

  Widget qrCard(String text, String imageText, VoidCallback onTap,
      {Color? tileColor}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: tileColor ?? AppColors.white_color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withOpacity(.12),
              offset: Offset(0, 10),
              blurRadius: 10,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                imageText,
                width: 80,
              ),
              SizedBox(height: 10),
              AppText(
                title: text,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
