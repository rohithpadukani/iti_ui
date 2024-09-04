import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:iti_app/views/attendance.dart';
import 'package:iti_app/views/attendance_percentage.dart';
import 'package:iti_app/views/attendance_report.dart';
import 'package:iti_app/views/home_page.dart';
import 'package:iti_app/views/login_page.dart';
import 'package:iti_app/views/show_percentage.dart';
import 'package:iti_app/views/show_stipend.dart';
import 'package:iti_app/views/show_students_list.dart';
import 'package:iti_app/views/stipend_select.dart';
import 'package:iti_app/views/students_list.dart';
import 'package:iti_app/views/take_attendance_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff626ED4)),
        useMaterial3: true,
      ),
      home:  const HomePage(),
    );
  }
}
