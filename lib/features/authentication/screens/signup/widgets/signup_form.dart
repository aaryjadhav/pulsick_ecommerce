import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:pulsick_ecommerce/features/authentication/screens/signup/widgets/terms_and_conditons_checkbox.dart';
import 'package:pulsick_ecommerce/features/utils/constants/sizes.dart';
import 'package:pulsick_ecommerce/features/utils/constants/text_string.dart';
import 'package:pulsick_ecommerce/features/utils/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
          //Phone Number
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.user),
            ),
          ),
          //Password
          SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          //Terms&Conditions Checkbox
          TermsAndConditionsCheckbox(),
          SizedBox(height: TSizes.spaceBtwSections),
          //Sign up Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => VerifyEmailScreen()),
                child: Text(TTexts.createAcount),
              ))
        ],
      ),
    );
  }
}
