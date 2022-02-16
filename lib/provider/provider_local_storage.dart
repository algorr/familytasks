import 'dart:convert';

import 'package:familytasks/datas/tasks.dart';
import 'package:familytasks/services/local/local_storage_service.dart';
import 'package:familytasks/utils/key.dart';
import 'package:get/get.dart';

class LocalStorageProvider {
  final _localStorageService = Get.find<LocalStorageService>();

  List<Tasks> readTasks() {
    var tasks = <Tasks>[];
    jsonDecode(_localStorageService.read(taskKey).toString())
        .forEach((e) => tasks.add(Tasks.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Tasks> tasks){
    _localStorageService.write(taskKey, jsonEncode(tasks));
  }
}
