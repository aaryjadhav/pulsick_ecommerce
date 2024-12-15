
import 'package:flutter/material.dart';
import 'package:pulsick_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:pulsick_ecommerce/features/utils/constants/colors.dart';
import 'package:pulsick_ecommerce/features/utils/constants/sizes.dart';
import 'package:pulsick_ecommerce/features/utils/device/device_utility.dart';
import 'package:pulsick_ecommerce/features/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBottomNavigation extends StatelessWidget {
  const OnBoardingBottomNavigation({
    super.key,
  });
   
  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
       final dark = THelperFunction.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
          controller:controller.pageController,
          onDotClicked: controller.doNavigationClick,
          count: 3,
          effect:  ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light: TColors.dark, dotHeight: 6),
        ));
  }
}