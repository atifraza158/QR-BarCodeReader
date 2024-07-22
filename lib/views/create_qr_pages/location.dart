import 'package:flutter/material.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';

import '../utils/app_button/app_button.dart';
import '../utils/big_text_field/big_text_field.dart';

class LocationDetail extends StatelessWidget {
  LocationDetail({super.key});

  final latController = TextEditingController();
  final longController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "Location",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              BigTextField(
                controller: latController,
                hintText: "Latitude",
              ),
              SizedBox(height: 10),
              BigTextField(
                controller: longController,
                hintText: "longitude",
              ),
              SizedBox(height: 30),
              AppButton(
                buttonName: "Generate QR",
                onTap: () {},
                textSize: 13,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
