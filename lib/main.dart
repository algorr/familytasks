import 'package:familytasks/controllers/bottom_navy_binding.dart';
import 'package:familytasks/pages/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const LandingPage(),
          binding: BottomNavyBinding(),
        ),
      ],
    );
  }
}
