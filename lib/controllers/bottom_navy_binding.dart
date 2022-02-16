import 'package:familytasks/controllers/bottom_navy_controller.dart';
import 'package:familytasks/controllers/box_page_controller.dart';
import 'package:familytasks/controllers/profile_page_controller.dart';
import 'package:familytasks/controllers/progress_page_controller.dart';
import 'package:familytasks/controllers/tasks_page_controller.dart';
import 'package:get/get.dart';

import 'landing_page_controller.dart';

class BottomNavyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavyController>(() => BottomNavyController());
    Get.lazyPut<LandingPageController>(() => LandingPageController());
    Get.lazyPut<TasksPageController>(() => TasksPageController());
    Get.lazyPut<ProgressPageController>(() => ProgressPageController());
    Get.lazyPut<BoxPageController>(() => BoxPageController());
    Get.lazyPut<ProfilePageController>(() => ProfilePageController());
  }
}
