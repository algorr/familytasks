import 'package:familytasks/controllers/tasks_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TasksPageController>(
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  itemCount: controller.tasks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: Icon(Icons.mark_chat_read_rounded),
                      title: controller.getTask),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
