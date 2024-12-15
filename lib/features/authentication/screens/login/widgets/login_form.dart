
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:pulsick_ecommerce/features/utils/constants/sizes.dart';
import 'package:pulsick_ecommerce/features/utils/constants/text_string.dart';

import '../../../../../navigation_menu.dart';
import '../../password_configuration/forget_password.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //Email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          //Password
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
    
          //Remember Me & Forgot Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remember me
              Row(children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe),
              ]),
    
              //Forget Password
              TextButton(
                onPressed: () => Get.to(() => const ForgetPassword()),
                child: const Text(TTexts.forgotPassword),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          //Sign in button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>Get.to(()=>const NavigationMenu()),
                child: Text(TTexts.signIn),
              )),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          //Create account button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () =>Get.to(()=>const SignUpScreen()),
                child: Text(TTexts.createAcount),
              )),
        ],
      ),
    ));
  }
}