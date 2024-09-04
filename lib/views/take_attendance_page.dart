import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TakeAttendance extends StatefulWidget {
  const TakeAttendance({super.key});

  @override
  State<TakeAttendance> createState() => _TakeAttendanceState();
}

class _TakeAttendanceState extends State<TakeAttendance> {
  bool showTrade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
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
                'Course Name',
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
      body: Column(
        children: [
          Container(
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
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
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
                    height: 10,
                  ),
                  // Button rows
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                                ? Border.all(
                                    color: Colors.transparent, width: 2)
                                : Border.all(
                                    color: const Color(0xff5473FF), width: 2),
                          ),
                          child: Text(
                            'FN',
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
                                : Border.all(
                                    color: Colors.transparent, width: 2),
                          ),
                          child: Text(
                            'AN',
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
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(children: [
              Container(
                margin: const EdgeInsets.only(bottom: 100),
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          width: double.maxFinite,
                          height: 80,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black38,
                                blurRadius: 6.0,
                              )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: const Border(
                              left: BorderSide(
                                color: Color(0xffF2A852),
                                width: 15,
                              ),
                            ),
                          ),
                          //details inside student card
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //name and roll number
                              Container(
                                padding: const EdgeInsets.only(left: 20),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sudhimon',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Color(0xff343333)),
                                    ),
                                    Text(
                                      'MSCCS007',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xff4C4949)),
                                    )
                                  ],
                                ),
                              ),
                              //present absent marking
                              Container(
                                padding: const EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    //forenoon
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff389720)),
                                            child: const Center(
                                              child: Text(
                                                'P',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          'FN',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff4C4949)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    //afternoon
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xffE51717)),
                                            child: const Center(
                                              child: Text(
                                                'A',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const Text(
                                          'AN',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff4C4949)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              //total present and absent
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Container(
                    width: double.maxFinite,
                    //height: 100,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: const BoxDecoration(
                      color: Color(0xffE7E7EC),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //total present
                        Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xff389720),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              '10',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        //total absent
                        Container(
                          width: 100,
                          height: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xffE51717),
                              borderRadius: BorderRadius.circular(15)),
                          child: const Center(
                            child: Text(
                              '10',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}

class ShowStudents extends StatefulWidget {
  const ShowStudents({super.key});

  @override
  State<ShowStudents> createState() => _ShowStudentsState();
}

class _ShowStudentsState extends State<ShowStudents> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
