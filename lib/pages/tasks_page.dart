
import 'package:familytasks/utils/extensions.dart';
import 'package:flutter/material.dart';


import '../widgets/my_card.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.all(4.0.wp),
              child: Text(
                "My Tasks",
                style: TextStyle(fontSize: 25.0.sp),
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                MyCard(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
