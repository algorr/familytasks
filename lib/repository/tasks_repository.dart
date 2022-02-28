import 'package:familytasks/datas/tasks.dart';
import 'package:familytasks/provider/provider_local_storage.dart';

class TasksRepository{
  LocalStorageProvider localStorageProvider;
  TasksRepository({required this.localStorageProvider});

  List<Tasks> readTasks() => localStorageProvider.readTasks();
  void writeTasks(List<Tasks> tasks) => localStorageProvider.writeTasks(tasks);

}