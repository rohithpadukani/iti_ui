import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AttendanceReport extends StatefulWidget {
  const AttendanceReport({super.key});

  @override
  State<AttendanceReport> createState() => _AttendanceReportState();
}

class _AttendanceReportState extends State<AttendanceReport>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropDownValue = 'One';

  bool foreNoon = true;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
                'Attendance Report',
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownMenu<String>(
              initialSelection: list.first,
              onSelected: (String? value) {
                setState(() {
                  dropDownValue = value!;
                });
              },
              dropdownMenuEntries:
                  list.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
          ),
          TabBar(
            controller: _tabController,
            tabs: const [
              Tab(text: 'Daily'),
              Tab(text: 'Monthly'),
              Tab(text: 'Date Wise'),
            ],
            dividerColor: Colors.transparent,
          ),
          //tab bar view
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              DailyViewReport(),
              const MonthlyViewReport(),
              const DateWiseViewReport(),
            ]),
          )
        ],
      ),
    );
  }

  Column DailyViewReport() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: const Text(
                    'Date: 12-03-2001',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    foreNoon = true;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                  decoration: BoxDecoration(
                    color:
                        foreNoon ? const Color(0xff5473FF) : Colors.transparent,
                    borderRadius: BorderRadius.circular(14),
                    border: foreNoon
                        ? Border.all(color: Colors.transparent, width: 2)
                        : Border.all(color: const Color(0xff5473FF), width: 2),
                  ),
                  child: Text(
                    'FN',
                    style: TextStyle(
                      color: foreNoon ? Colors.white : const Color(0xff5473FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    foreNoon = false;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    color:
                        foreNoon ? Colors.transparent : const Color(0xff5473FF),
                    borderRadius: BorderRadius.circular(14),
                    border: foreNoon
                        ? Border.all(color: const Color(0xff5473FF), width: 2)
                        : Border.all(color: Colors.transparent, width: 2),
                  ),
                  child: Text(
                    'AN',
                    style: TextStyle(
                      color: foreNoon ? const Color(0xff5473FF) : Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                              fontWeight: FontWeight.w500),
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
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                              fontWeight: FontWeight.w500),
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
      ],
    );
  }
}

class MonthlyViewReport extends StatelessWidget {
  const MonthlyViewReport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: const Text(
                    'Year: 2024',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: const Text(
                    'Month: January',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.save_alt_rounded,
                size: 30.0,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey[300],
          child: const Row(
            children: [
              Expanded(
                  child: Text('No',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(
                  child: Text('Name',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(
                  child: Text('Present',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(
                  child: Text('Total',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text('No'),
                    ),
                    Expanded(
                      child: Text('Name'),
                    ),
                    Expanded(
                      child: Text('Present'),
                    ),
                    Expanded(
                      child: Text('Total'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class DateWiseViewReport extends StatelessWidget {
  const DateWiseViewReport({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: const Text(
                    '10-10-2024',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 11, 16, 11),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: const Text(
                    '10-11-2024',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.save_alt_rounded,
                size: 30.0,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          color: Colors.grey[300],
          child: const Row(
            children: [
              Expanded(
                  child: Text('No',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(
                  child: Text('Name',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(
                  child: Text('Present',
                      style: TextStyle(fontWeight: FontWeight.bold))),
              Expanded(
                  child: Text('Total',
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text('No'),
                    ),
                    Expanded(
                      child: Text('Name'),
                    ),
                    Expanded(
                      child: Text('Present'),
                    ),
                    Expanded(
                      child: Text('Total'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
