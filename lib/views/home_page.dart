import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iti_app/views/attendance.dart';
import 'package:iti_app/views/attendance_percentage.dart';
import 'package:iti_app/views/attendance_report.dart';
import 'package:iti_app/views/stipend_select.dart';
import 'package:iti_app/views/students_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: const Color(0xff5473FF),
        title: const Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                'App Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      drawer: const Drawer(
        backgroundColor: Colors.white,
        child: Text('Sample'),
      ),
      //main grey background
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF4F4F4),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          //main column
          child: Column(
            children: [
              //attendance card container
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text(
                        'Attendance',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(const AttendancePage());
                            },
                            child: const Column(children: [
                              Icon(
                                Icons.add_circle_rounded,
                                size: 40,
                                color: Color(0xff5473FF),
                              ),
                              Text(
                                'Attendance',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ]),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(const AttendanceReport());
                            },
                            child: const Column(children: [
                              Icon(
                                Icons.analytics_rounded,
                                size: 40,
                                color: Color(0xff5473FF),
                              ),
                              Text(
                                'Report',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ]),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: (){
                              Get.to(const AttendancePercentage());
                            },
                            child: const Column(children: [
                              Icon(
                                Icons.calendar_month_rounded,
                                size: 40,
                                color: Color(0xff5473FF),
                              ),
                              Text(
                                'Percentage',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Stipend card container
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Stipend',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(const StipendSelect());
                            },
                            child: const Column(children: [
                              Icon(
                                Icons.analytics_rounded,
                                size: 40,
                                color: Color(0xff5473FF),
                              ),
                              Text(
                                'Report',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ]),
                          ),
                          const SizedBox(
                            width: 30,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Student card container
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Students',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(const Students());
                            },
                            child: const Column(children: [
                              Icon(
                                Icons.people_alt_rounded,
                                size: 40,
                                color: Color(0xff5473FF),
                              ),
                              Text(
                                'Students',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
