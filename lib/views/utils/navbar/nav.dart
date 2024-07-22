import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:get/get.dart';
import 'package:qr_code_app/controller/nav_controller.dart';
import 'package:qr_code_app/views/qr_code/all_platforms_qr.dart';
import 'package:qr_code_app/views/history/history.dart';
import 'package:qr_code_app/views/home_screen.dart';

// ignore: must_be_immutable
class Nav extends StatelessWidget {
  Nav({super.key});

  NavController navController = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => bottomData[navController.currentIndex.value]['screen'],
      ),
      bottomNavigationBar: Container(
        width: Get.width,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(21),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              offset: Offset(0, 10),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            bottomData.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  navController.selectTab(index);
                },
                child: Obx(
                  () => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // indicator
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        height: 6,
                        width: 30,
                        decoration: BoxDecoration(
                          color: navController.currentIndex == index
                              ? Colors.lightBlue
                              : Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      SizedBox(height: 12),

                      // Icons
                      Icon(
                        bottomData[index]['icon'],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List bottomData = [
    {
      'icon': Octicons.home,
      'screen': HomeScreen(),
    },
    {
      'icon': FontAwesome.qrcode,
      'screen': AllPlatformsQR(),
    },
    {
      'icon': LineariconsFree.history,
      'screen': History(),
    },
  ];
}
