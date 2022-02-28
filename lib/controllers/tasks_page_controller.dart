import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../datas/tasks.dart';
import '../repository/repository_tasks.dart';

class TasksPageController extends GetxController {
  TasksRepository tasksRepository;
  TasksPageController({required this.tasksRepository});
  final textController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final isPriority = false.obs;
  final chipIndex = 0.obs;
  final tasks = <Tasks>[].obs;

  @override
  void onInit() {
    super.onInit();
    tasks.assignAll(tasksRepository.readTasks());
    ever(tasks, (_) => tasksRepository.writeTasks(tasks));
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeIndexChip(value) {
    chipIndex.value = value;
  }

  bool changePriority(bool isPriority) {
    isPriority = true;
    return isPriority;
  }

  bool addTask(Tasks task){
    if(tasks.contains(task)){
      return false;
    }
    tasks.add(task);
    return true;

  }
}
