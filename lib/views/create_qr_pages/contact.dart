import 'package:flutter/material.dart';
import 'package:qr_code_app/views/utils/app_colors/app_colors.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';
import 'package:qr_code_app/views/utils/intl_phone_field/phone_field.dart';

import '../utils/app_button/app_button.dart';
import '../utils/big_text_field/big_text_field.dart';

class ContactsDetail extends StatelessWidget {
  ContactsDetail({super.key});

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final phoneNo = TextEditingController();
  final companyName = TextEditingController();
  final jobTitle = TextEditingController();
  final Email = TextEditingController();
  final streetAddress = TextEditingController();
  final country = TextEditingController();
  final postalAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary_bg_color,
      body: BaseView(
        appbarText: "Contacts",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                BigTextField(
                  controller: firstName,
                  hintText: "First Name",
                ),
                SizedBox(height: 10),
                BigTextField(
                  controller: firstName,
                  hintText: "Last Name",
                ),
                SizedBox(height: 10),
                PhoneField(controller: phoneNo),
                SizedBox(height: 10),
                BigTextField(
                  controller: firstName,
                  hintText: "Company Name",
                ),
                SizedBox(height: 10),
                BigTextField(
                  controller: firstName,
                  hintText: "Job Title",
                ),
                SizedBox(height: 10),
                BigTextField(
                  controller: firstName,
                  hintText: "Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10),
                BigTextField(
                  controller: firstName,
                  hintText: "Street Address",
                ),
                SizedBox(height: 10),
                BigTextField(
                  controller: firstName,
                  hintText: "Country",
                ),
                SizedBox(height: 10),
                BigTextField(
                  controller: firstName,
                  hintText: "Postal Code",
                ),
                SizedBox(height: 10),
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
      ),
    );
  }
}
