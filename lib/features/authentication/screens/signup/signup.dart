import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pulsick_ecommerce/common/widgets/loginin_signup/form_divider.dart';
import 'package:pulsick_ecommerce/common/widgets/loginin_signup/social_icons.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:pulsick_ecommerce/features/utils/constants/sizes.dart';
import 'package:pulsick_ecommerce/features/utils/constants/text_string.dart';
import 'package:pulsick_ecommerce/features/utils/helpers/helper_functions.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title
                Text(TTexts.SignUpTitle,
                    style: Theme.of(context).textTheme.headlineMedium),

                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //Form
                SignUpForm(),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //Divider
                FormDivider(
                     dividerText: TTexts.orSignUpWith.capitalize!),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                //Social Buttons
                SocialIcons(),
              ],
            ),
          ),
        ));
  }
}


