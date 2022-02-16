class Tasks {
  int taskId;
  String title;
  String text;
  bool priority;

  Tasks({
    required this.taskId,
    required this.title,
    required this.text,
    required this.priority,
  });

  List<Tasks> taskList = [
    Tasks(taskId:1, title: "Kedi", text: "Kediye mama ver", priority: true),
    Tasks(taskId:1, title: "Bulaşık", text: "Makinayı çalıştır", priority: false),
    Tasks(taskId:1, title: "Temizlik", text: "Robotu çalıştır", priority: false),
    Tasks(taskId:1, title: "Çocuk", text: "Çocuğu okuldan al", priority: true),
  ];
}
