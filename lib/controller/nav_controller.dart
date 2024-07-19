import 'package:get/get.dart';

class NavController extends GetxController {
  RxInt currentIndex = 0.obs;

  selectTab(int index) {
    currentIndex.value = index;
    update();
  }
}
