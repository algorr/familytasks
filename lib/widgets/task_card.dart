import 'package:familytasks/controllers/tasks_page_controller.dart';
import 'package:familytasks/datas/tasks.dart';
import 'package:familytasks/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskCard extends StatelessWidget {
  final controller = Get.find<TasksPageController>();
  final Tasks task;
  TaskCard({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = HexColor.fromHex(task.color);
    final widht = Get.width - 12.0.wp;
    return Container();
  }
}
