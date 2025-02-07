import 'package:comapp/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordingController extends GetxController {
  static OnbordingController get instance => Get.find();

  /// variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// update current index when page scroll
  void updatePageIndicater(index) => currentPageIndex.value = index;

  ///Jump to the specific dot selected page
  void dotNavigateonClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///update current index & jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///Update current index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
