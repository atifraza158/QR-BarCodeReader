import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:qr_code_app/views/utils/app_colors/app_colors.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';

import '../utils/app_button/app_button.dart';
import '../utils/big_text_field/big_text_field.dart';

class EmailDetail extends StatelessWidget {
  EmailDetail({super.key});

  final emailAddressController = TextEditingController();
  final emailSubjectController = TextEditingController();
  final emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "Email",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              BigTextField(
                controller: emailAddressController,
                hintText: "Enter Email Address",
              ),
              SizedBox(height: 10),
              BigTextField(
                controller: emailSubjectController,
                hintText: "Enter Email Subject",
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  BigTextField(
                    controller: emailTextController,
                    hintText: "Enter Email Text",
                    maxLines: 5,
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Icon(
                      FontAwesome.edit,
                      color: AppColors.bg_grey.withOpacity(.7),
                      size: 14,
                    ),
                  )
                ],
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
