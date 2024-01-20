import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  //update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  //jump to the specific dot selected page
  void dotNavigatonClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current index and jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value = 2; //  this is going to keep the state
    pageController.jumpToPage(
        2); //this is going to jump the screen to the last screen as we have only three screen now
  }
}
