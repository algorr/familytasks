import 'package:get/get.dart';

class BottomNavyController extends GetxController {
  int tabindex = 0;

  void currentIndex(int index) {
    tabindex = index;
    update();
  }
}
