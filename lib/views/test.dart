
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AttendanceTest extends StatefulWidget {
  AttendanceTest({super.key});

  @override
  State<AttendanceTest> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendanceTest> {
    bool _isVisible = false; // Initial visibility state

  void _toggleWidget() {
    setState(() {
      _isVisible = !_isVisible; // Toggle visibility when the container is tapped
    });
  }

  //final myController = Get.put(TestingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Get.back();
          },
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: const Color(0xff5473FF),
        title: Align(
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
      //main container
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          //main column
          child: Column(
            children: [
              //date row
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
              //button rows
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      //showTrade = true.obs as bool;
                      print('working');
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
                      decoration: BoxDecoration(
                        color: const Color(0xff5473FF),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Text(
                        'Trade',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      //showTrade = false.obs;
                      print("Working");
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: const Color(0xff5473FF), width: 2),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: const Text(
                        'Engage',
                        style: TextStyle(
                            color: Color(0xff5473FF),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              // Center(
              //   child: Obx(
              //     () => Visibility(
              //       visible: true,
              //       child: Container(
              //         width: 100,
              //         height: 100,
              //         color: Colors.red,
              //       ),
              //     ),
              //   ),
              // ),
              //showTrade ? const ShowTrades() : const ShowEngage()
              const ShowTrades(),
          

               GestureDetector(
              onTap: _toggleWidget, // Toggle the widget on tap
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 100,
                child: Center(
                  child: Text(
                    'Tap Me!',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Conditionally show another widget based on _isVisible state
            _isVisible
                ? Container(
                    color: Colors.green,
                    width: 200,
                    height: 100,
                    child: Center(
                      child: Text(
                        'This is a new widget',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                : Container(), 
            ],
          ),
        ),
      ),
    );
  }
}

//show trades widget

class ShowTrades extends StatelessWidget {
  const ShowTrades({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          //first course container
          Container(
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
          //second course container
          Container(
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
          //third course contianer
          Container(
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
        ],
      ),
    );
  }
}

class ShowEngage extends StatelessWidget {
  const ShowEngage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text('Hello..')
        ],
      ),
    );
  }
}
