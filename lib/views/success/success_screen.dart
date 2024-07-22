import 'package:flutter/material.dart';
import 'package:qr_code_app/views/utils/app_button/app_button.dart';
import 'package:qr_code_app/views/utils/app_colors/app_colors.dart';
import 'package:qr_code_app/views/utils/app_text/app_text.dart';
import 'package:qr_code_app/views/utils/base_view/base_view.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.data,
  });
  final String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView(
        appbarText: "QR-Code",
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppText(
                  title: "QR Code Create Successfully",
                  size: 14,
                  fontWeight: FontWeight.w600,
                ),
                AppText(
                  title: "You can see the QR-code generated below",
                  size: 10,
                ),
                SizedBox(height: 20),
                QrImageView(
                  data: data,
                  size: 200,
                ),
                AppText(
                  textAlign: TextAlign.center,
                  title: data,
                  size: 11,
                  color: AppColors.bg_grey.withOpacity(.7),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AppButton(
                          buttonRadius: BorderRadius.circular(30),
                          buttonName: "Save",
                          onTap: () {},
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: AppButton(
                          buttonName: "Share",
                          buttonRadius: BorderRadius.circular(30),
                          onTap: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
