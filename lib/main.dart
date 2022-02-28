import 'package:familytasks/controllers/bottom_navy_binding.dart';
import 'package:familytasks/pages/landing_page.dart';
import 'package:familytasks/services/local/local_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await GetStorage.init();
  await Get.putAsync(() => LocalStorageService().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.latoTextTheme()),
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
