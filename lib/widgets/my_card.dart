import 'package:dotted_border/dotted_border.dart';
import 'package:familytasks/controllers/tasks_page_controller.dart';
import 'package:familytasks/datas/tasks.dart';
import 'package:familytasks/utils/extensions.dart';
import 'package:familytasks/widgets/icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCard extends StatelessWidget {
  final controller = Get.find<TasksPageController>();

  MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final icon = icons();
    var containerWidth = Get.width - 12.0.wp;

    return Container(
      width: containerWidth / 2,
      height: containerWidth / 2,
      margin: EdgeInsets.all(3.0.wp),
      child: InkWell(
        onTap: () {
          Get.defaultDialog(
            title: "What is the task?",
            content: Form(
                key: controller.formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0.wp),
                      child: TextFormField(
                        controller: controller.textController,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please fill the title';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          hintText: "Title?",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Obx(() => Checkbox(
                            value: controller.isPriority.value,
                            onChanged: (value) {
                              controller.isPriority.value =
                                  !controller.isPriority.value;
                            })),
                        const Text('Is it Priority?'),
                      ],
                    ),
                    Wrap(
                      spacing: 1.0.wp,
                      children: icon
                          .map((e) => Obx(() {
                                final index = icon.indexOf(e);
                                return ChoiceChip(
                                  selectedColor: Colors.grey[200],
                                  pressElevation: 0,
                                  backgroundColor: Colors.white,
                                  label: e,
                                  selected: controller.chipIndex.value == index,
                                  onSelected: (bool selected) {
                                    controller.chipIndex.value =
                                        selected ? index : 0;
                                  },
                                );
                              }))
                          .toList(),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        if (controller.formKey.currentState!.validate()) {
                          int iconn =
                              icon[controller.chipIndex.value].icon!.codePoint;
                          String color =
                              icon[controller.chipIndex.value].color!.toHex();

                          var task = Tasks(
                            title: controller.textController.text,
                            color: color,
                            icon: iconn,
                            priority: controller.isPriority.value,
                          );
                          Get.back();
                          controller.addTask(task);
                          Get.snackbar("State", "Task Added Succesfully!",
                              snackPosition: SnackPosition.TOP,
                              duration: const Duration(seconds: 2),showProgressIndicator: true);
                        }
                        //debugPrint(controller.isPriority.toString());
                      },
                      child: const Text('Confirm'),
                    ),
                  ],
                )),
          );
          controller.textController.clear();
          controller.changeIndexChip(0);
          controller.changePriority(false);
        },
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
