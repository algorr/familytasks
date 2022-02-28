import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:familytasks/controllers/bottom_navy_controller.dart';
import 'package:familytasks/pages/box_page.dart';
import 'package:familytasks/pages/profile_page.dart';
import 'package:familytasks/pages/progress_page.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'tasks_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavyController>(
      builder: (controller) => Scaffold(
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: controller.tabindex,
          items: [
            BottomNavyBarItem(
                icon: const Icon(Icons.home_rounded),
                title: const Text("Home"),
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.task_rounded),
                title: const Text("Progress"),
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.inbox_rounded),
                title: const Text("Inbox"),
                inactiveColor: Colors.black),
            BottomNavyBarItem(
                icon: const Icon(Icons.person_rounded),
                title: const Text("Profile"),
                inactiveColor: Colors.black),
          ],
          onItemSelected: controller.currentIndex,
        ),
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabindex,
          children: const [
            TasksPage(),
            ProgressPage(),
            BoxPage(),
            ProfilePage(),
          ],
        )),
      ),
    );
  }
}
