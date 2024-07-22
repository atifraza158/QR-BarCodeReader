import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:qr_code_app/views/history/history.dart';
import 'package:qr_code_app/views/home_screen.dart';
import 'package:qr_code_app/views/qr_code/all_platforms_qr.dart';
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
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
            decoration: BoxDecoration(
              color: AppColors.primary_color,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText(
                  title: "QR Code Reader",
                  size: 16,
                  color: AppColors.white_color,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(width: 15),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.white_color,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    FontAwesome.qrcode,
                    size: 20,
                    color: AppColors.primary_color,
                  ),
                )
              ],
            ),
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
          AllPlatformsQR(),
          History(),
        ]),
      ),
    );
  }
}
