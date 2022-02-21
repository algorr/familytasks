import 'package:dotted_border/dotted_border.dart';
import 'package:familytasks/controllers/tasks_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:familytasks/utils/extensions.dart';

class MyCard extends StatelessWidget {
  final controller = Get.find<TasksPageController>();
  MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var containerWidth = Get.width - 12.0.wp;
    return Container(
      width: containerWidth / 2,
      height: containerWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        onTap: () {},
        child: DottedBorder(
          child: Center(
            child: Icon(
              Icons.add_rounded,
              size: 10.0.wp,
              color: Colors.grey,
            ),
          ),
          color: Colors.grey[400]!,
          dashPattern: const [8, 4],
        ),
      ),
    );
  }
}
