import 'package:get/get.dart';

import '../datas/tasks.dart';
import '../repository/repository_tasks.dart';

class TasksPageController extends GetxController {
  TasksRepository tasksRepository;

  TasksPageController({required this.tasksRepository});

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
}
