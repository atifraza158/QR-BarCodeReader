import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';

import '../utils/app_button/app_button.dart';
import '../utils/app_colors/app_colors.dart';
import '../utils/big_text_field/big_text_field.dart';

class WifiDetail extends StatefulWidget {
  WifiDetail({super.key});

  @override
  State<WifiDetail> createState() => _WifiDetailState();
}

class _WifiDetailState extends State<WifiDetail> {
  final networkName = TextEditingController();

  final passwordController = TextEditingController();

  String selectedValue = 'WPA/WPA 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "Wifi",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              BigTextField(
                controller: networkName,
                hintText: "Network Name",
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                width: Get.width,
                decoration: BoxDecoration(
                  color: AppColors.white_color,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: DropdownButton(
                  value: selectedValue,
                  style: TextStyle(
                    color: AppColors.bg_grey,
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                  onChanged: (newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: [
                    'WPA/WPA 2',
                    'WEP',
                    ' - ',
                  ].map((option) {
                    return DropdownMenuItem(
                      value: option,
                      child: Text(option),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 10),
              Stack(
                children: [
                  BigTextField(
                    controller: passwordController,
                    hintText: "Password",
                    suffix: FontAwesome.eye,
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Icon(
                      Entypo.key,
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
