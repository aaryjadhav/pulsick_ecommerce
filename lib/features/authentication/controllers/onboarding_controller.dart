import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  //Variables
  final pageController=PageController();
  Rx<int> currentPageIndex=0.obs;

  //Update current index when page scroll
  void updatePageIndicator(index)=>currentPageIndex.value=index;

  //Jump to the specific dot selected page
  void doNavigationClick(index){
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }

  //Update current index & jump to next page
  void nextPage(){
    if(currentPageIndex.value==2){
      Get.offAll(LoginScreen());
    }else{
      int page =currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  //Update current index & jump to last page
  void skipPage(){
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}