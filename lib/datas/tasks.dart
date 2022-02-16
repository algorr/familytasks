import 'dart:ui';

import 'package:equatable/equatable.dart';

class Tasks extends Equatable {
  final String title;
  final Color color;
  final int icon;
  final bool priority;
  final List<dynamic>? todos;

  Tasks(
      {required this.title,
      required this.color,
      required this.icon,
      required this.priority,
      this.todos});

  Tasks instead({
    String? title,
    int? icon,
    Color? color,
    List<dynamic>? todos,
  }) =>
      Tasks(
        title: title ?? this.title,
        color: color ?? this.color,
        icon: icon ?? this.icon,
        priority: false,
        todos: todos ?? this.todos,
      );

  factory Tasks.fromJson(Map<String, dynamic> json) => Tasks(
        title: json['title'],
        color: json['color'],
        icon: json['icon'],
        priority: json['priority'],
        todos: json['todos'],
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'icon': icon,
        'color': color,
        'priority': priority,
        'todos': todos,
      };

  @override
  List<Object?> get props => [title, icon, color];
}
