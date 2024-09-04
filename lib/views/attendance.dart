import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iti_app/views/take_attendance_page.dart';

class AttendancePage extends StatefulWidget {
  AttendancePage({super.key});

  @override
  _AttendancePageState createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  bool showTrade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
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
                'Attendance',
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              // Date row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Date: 12-01-2024',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    child: const Row(
                      children: [
                        Text(
                          'Wed',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.calendar_month,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Button rows
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showTrade = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
                      decoration: BoxDecoration(
                        color: showTrade
                            ? const Color(0xff5473FF)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(14),
                        border: showTrade
                            ? Border.all(color: Colors.transparent, width: 2)
                            : Border.all(
                                color: const Color(0xff5473FF), width: 2),
                      ),
                      child: Text(
                        'Trade',
                        style: TextStyle(
                          color: showTrade
                              ? Colors.white
                              : const Color(0xff5473FF),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        showTrade = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                      decoration: BoxDecoration(
                        color: showTrade
                            ? Colors.transparent
                            : const Color(0xff5473FF),
                        borderRadius: BorderRadius.circular(14),
                        border: showTrade
                            ? Border.all(
                                color: const Color(0xff5473FF), width: 2)
                            : Border.all(color: Colors.transparent, width: 2),
                      ),
                      child: Text(
                        'Engage',
                        style: TextStyle(
                          color: showTrade
                              ? const Color(0xff5473FF)
                              : Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Conditionally show the widget based on `showTrade`
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(const TakeAttendance());
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black38,
                              blurRadius: 6.0,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        width: double.infinity,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Course Name',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      color: Color(0xff343333)),
                                ),
                                Text(
                                  'MSCC2024',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff4C4949)),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Show Trades widget
class ShowTrades extends StatelessWidget {
  ShowTrades({super.key});

  // Sample trade data
  final List<Map<String, String>> trades = [
    {'courseName': 'CS', 'courseCode': 'MSCC2024'},
    {'courseName': 'Mcom', 'courseCode': 'MCMC2025'},
    {'courseName': 'Fitter', 'courseCode': 'FITT2026'},
    {'courseName': 'ECE', 'courseCode': 'ECEC2026'},
    {'courseName': 'MA', 'courseCode': 'MACC2026'}
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: trades.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 6.0,
                ),
              ],
              color: Colors.white,
            ),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      trades[index]['courseName'] ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff343333)),
                    ),
                    Text(
                      trades[index]['courseCode'] ?? '',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4C4949)),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          );
        },
      ),
    );
  }
}

// Show Engage widget
class ShowEngage extends StatelessWidget {
  const ShowEngage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('Hello..'),
        ],
      ),
    );
  }
}