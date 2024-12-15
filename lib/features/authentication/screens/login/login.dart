import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pulsick_ecommerce/common/styles/spacing_styles.dart';
import 'package:pulsick_ecommerce/common/widgets/loginin_signup/form_divider.dart';
import 'package:pulsick_ecommerce/common/widgets/loginin_signup/social_icons.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:pulsick_ecommerce/features/utils/constants/sizes.dart';
import 'package:pulsick_ecommerce/features/utils/constants/text_string.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Titile & Sub-title
              LoginHeader(),
              // const SizedBox(
              //   height: TSizes.defaultSpace,
              // ),
              //Form
              LoginForm(),
              //Divider
              FormDivider( dividerText: TTexts.orSignInWith.capitalize!,),
              SizedBox(height: TSizes.spaceBtwSections,),
              //Footer
              SocialIcons(),
            ],
          ),
        ),
      ),
    );
  }
}