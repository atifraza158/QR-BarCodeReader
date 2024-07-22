import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';

class ScanQrCode extends StatelessWidget {
  const ScanQrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "Scan QR-Code",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: Get.width,
            height: 200,
           
          ),
        ),
      ),
    );
  }
}
