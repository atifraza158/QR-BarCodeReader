import 'dart:async';

import 'package:get/get.dart';
import 'package:qr_code_app/views/tabbar/tabbar_widget.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(Duration(seconds: 2), () {
      Get.offAll(() => TabbarWidget());
    });
    super.onInit();
  }
}
