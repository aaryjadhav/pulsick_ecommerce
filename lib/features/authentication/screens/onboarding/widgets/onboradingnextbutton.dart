import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pulsick_ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:pulsick_ecommerce/features/utils/constants/colors.dart';
import 'package:pulsick_ecommerce/features/utils/constants/sizes.dart';
import 'package:pulsick_ecommerce/features/utils/device/device_utility.dart';
import 'package:pulsick_ecommerce/features/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            backgroundColor: dark ? TColors.primaryColor : TColors.black),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
