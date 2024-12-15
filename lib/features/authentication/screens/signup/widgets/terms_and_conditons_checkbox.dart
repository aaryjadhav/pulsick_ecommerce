import 'package:flutter/material.dart';
import 'package:pulsick_ecommerce/features/utils/constants/colors.dart';
import 'package:pulsick_ecommerce/features/utils/constants/sizes.dart';
import 'package:pulsick_ecommerce/features/utils/constants/text_string.dart';
import 'package:pulsick_ecommerce/features/utils/helpers/helper_functions.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24, child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "${TTexts.iAgreeto}",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "${TTexts.privacyPolicy}",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? TColors.white : TColors.primaryColor,
                  )),
          TextSpan(
              text: "${TTexts.and}",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "${TTexts.termsOfUse}",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? TColors.white : TColors.primaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? TColors.white : TColors.primaryColor,
                  )),
        ])),
      ],
    );
  }
}
