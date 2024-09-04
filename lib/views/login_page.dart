import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iti_app/views/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //login
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color(0xff626ED4),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            //username container
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Username',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 320,
                      height: 60,
                      color: const Color(0xffF0EEEE),
                      child: const TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0xffF0EEEE),
                          border: InputBorder.none,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //password container
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Password', style: TextStyle(fontSize: 16)),
                  const SizedBox(
                    height: 12,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 320,
                      height: 60,
                      color: const Color(0xffF0EEEE),
                      child: const TextField(
                        decoration: InputDecoration(
                          fillColor: Color(0xffF0EEEE),
                          border: InputBorder.none,
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //login button
            GestureDetector(
              onTap: (){
                Get.to(HomePage());
              },
              child: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xff626ED4),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
