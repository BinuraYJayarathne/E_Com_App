import 'package:get/get.dart';

class OnbordingController extends GetxController {
  static OnbordingController get instance => Get.find();

  /// variables
  ///
  /// update current index when page scroll
  void updatePageIndicater(index) {}

  ///Jump to the specific dot selected page
  void dotNavigateonClick(index) {}

  ///update current index & jump to next page
  void nextPage() {}

  ///Update current index & jump to the last page
  void skipPage() {}
}
