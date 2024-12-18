import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iti_app/model/db.dart';

//page to show stipend of students for selected course

class StipendShow extends StatefulWidget {
  const StipendShow({super.key});

  @override
  State<StipendShow> createState() => _StipendShowState();
}

class _StipendShowState extends State<StipendShow> {
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
      body: Container(
        child: ListView.builder(
            itemCount: studentsData.length,
            itemBuilder: (context, i) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              studentsData[i]['name'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color(0xff343333)),
                            ),
                            Text(
                              studentsData[i]['rollno'],
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4C4949)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          stipendData[i]['amount'].toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}