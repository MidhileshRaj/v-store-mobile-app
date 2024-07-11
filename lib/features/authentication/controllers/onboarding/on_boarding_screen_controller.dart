import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_store/features/authentication/screens/login/login_screen.dart';


class OnBoardingScreenController extends GetxController{
  static OnBoardingScreenController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;



  /// Update Current index while PageScroll
  updatePageIndicator(index){

    currentPageIndex.value = index;

  }

  /// Jump to specific page while Clicking page any dots
  dotNavigationOnClick(index){
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Jump to next page
  nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(LoginScreen());
    }else{
     int page = currentPageIndex.value +1;
     pageController.jumpToPage(page);

    }
  }

  /// Skip to the last page
  skipPage(){
    currentPageIndex.value =2;
    pageController.jumpToPage(2);
  }
}
