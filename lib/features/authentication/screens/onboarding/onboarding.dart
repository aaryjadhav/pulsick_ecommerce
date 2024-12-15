import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pulsick_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/onboarding/widgets/onboradingdotnavigation.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/onboarding/widgets/onboradingnextbutton.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/onboarding/widgets/onboradingpage.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/onboarding/widgets/onboradingskipbutton.dart';
import 'package:pulsick_ecommerce/features/utils/constants/image_strings.dart';
import 'package:pulsick_ecommerce/features/utils/constants/text_string.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizotal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.OnBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.OnBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.OnBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip button
          OnBoardingSkipButton(),
          //Dot navigation SmoothPageIndicator
          OnBoardingBottomNavigation(),
          //Circular button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}