import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:qr_code_app/views/qr_code/create_qr_code/create_qr_code.dart';
import 'package:qr_code_app/views/history/history.dart';
import 'package:qr_code_app/views/home_screen.dart';
import 'package:qr_code_app/views/utils/app_colors/app_colors.dart';
import 'package:qr_code_app/views/utils/app_text/app_text.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppColors.bg_color,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: AppText(
            title: "QR Code Reader",
            size: 16,
          ),
          bottom: TabBar(
            indicatorColor: AppColors.primary_color,
            dividerHeight: 0,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Octicons.home,
                      size: 18,
                      color: AppColors.primary_color,
                    ),
                    SizedBox(width: 10),
                    AppText(
                      title: "Home",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesome.qrcode,
                      size: 18,
                      color: AppColors.primary_color,
                    ),
                    SizedBox(width: 10),
                    AppText(
                      title: "Create",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      LineariconsFree.history,
                      size: 18,
                      color: AppColors.primary_color,
                    ),
                    SizedBox(width: 10),
                    AppText(
                      title: "History",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          HomeScreen(),
          CreateQrCode(),
          History(),
        ]),
      ),
    );
  }
}
