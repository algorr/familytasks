import 'package:familytasks/controllers/tasks_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:familytasks/utils/extensions.dart';
import '../widgets/my_card.dart';

class TasksPage extends GetView<TasksPageController> {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                "My Tasks",
                style: TextStyle(fontSize: 25.0.sp),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                MyCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
