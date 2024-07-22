import 'package:flutter/material.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';

import '../utils/app_button/app_button.dart';
import '../utils/big_text_field/big_text_field.dart';

class AppsDetail extends StatelessWidget {
  AppsDetail({super.key});

  final urlController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "Apps",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              BigTextField(
                controller: urlController,
                hintText: "Enter App URL here...!",
                maxLines: 4,
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
