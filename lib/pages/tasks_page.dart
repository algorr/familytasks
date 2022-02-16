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
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text('My Tasks',style: TextStyle(fontSize: 35),),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Go"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
