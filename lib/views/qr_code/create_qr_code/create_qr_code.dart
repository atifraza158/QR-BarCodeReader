import 'package:flutter/material.dart';
import 'package:qr_code_app/views/utils/app_button/app_button.dart';
import 'package:qr_code_app/views/utils/app_colors/app_colors.dart';
import 'package:qr_code_app/views/utils/app_text/app_text.dart';
import 'package:qr_code_app/views/utils/big_text_field/big_text_field.dart';
import 'package:qr_code_app/views/utils/intl_phone_field/phone_field.dart';

class CreateQrCode extends StatelessWidget {
  CreateQrCode({
    super.key,
    required this.title,
  });
  final String title;
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary_bg_color,
      appBar: AppBar(
        title: AppText(
          title: title,
        ),
        leading: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: AppColors.primary_color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
            color: AppColors.white_color,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title == "Whatsapp"
                ? PhoneField(
                    controller: textController,
                  )
                : title == "Facebook"
                    ? Column(
                        children: [
                          BigTextField(
                            controller: textController,
                            hintText: "$title URL",
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
                          )
                        ],
                      )
                    : title == "instagram"
                        ? Column(
                            children: [
                              BigTextField(
                                controller: textController,
                                hintText: "$title URL",
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
                              )
                            ],
                          )
                        : title == "Twitter"
                            ? Column(
                                children: [
                                  BigTextField(
                                    controller: textController,
                                    hintText: "$title URL",
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
                                  )
                                ],
                              )
                            : title == "Daily Motion"
                                ? Column(
                                    children: [
                                      BigTextField(
                                        controller: textController,
                                        hintText: "$title URL",
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
                                      )
                                    ],
                                  )
                                : title == "YouTube"
                                    ? Column(
                                        children: [
                                          BigTextField(
                                            controller: textController,
                                            hintText: "$title URL",
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              AppText(
                                                  title: 'https://', size: 13),
                                              SizedBox(width: 10),
                                              AppText(title: 'www', size: 13),
                                              SizedBox(width: 10),
                                              AppText(title: '.com', size: 13),
                                            ],
                                          )
                                        ],
                                      )
                                    : title == "Email"
                                        ? Column(
                                            children: [
                                              BigTextField(
                                                controller: textController,
                                                hintText: "Enter $title Text",
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  AppText(
                                                      title: 'https://',
                                                      size: 13),
                                                  SizedBox(width: 10),
                                                  AppText(
                                                      title: 'www', size: 13),
                                                  SizedBox(width: 10),
                                                  AppText(
                                                      title: '.com', size: 13),
                                                ],
                                              )
                                            ],
                                          )
                                        : BigTextField(
                                            controller: textController,
                                            maxLines: 4,
                                            hintText: "Type something here...!",
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
    );
  }
}
