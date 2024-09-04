import 'package:get/get.dart';

class TestingController extends GetxController {
  RxBool isVisible = true.obs;

  void showContainer(){
    isVisible.value = true;
  }

  void hideContainer(){
    isVisible.value = false;
  }
}