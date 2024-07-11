import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v_store/utils/constants/colors.dart';
import 'package:v_store/utils/constants/text_constants.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class PrivacyPolicyCheckBox extends StatelessWidget {
  const PrivacyPolicyCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = VStoreAppHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const Gap(VStoreAppSizes.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: VStoreAppTextConstants.iAgreeTo,
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: VStoreAppTextConstants.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark
                          ? VStoreAppColors.white
                          : VStoreAppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? VStoreAppColors.white
                          : VStoreAppColors.primary,
                    )),
            TextSpan(
                text: VStoreAppTextConstants.and,
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: VStoreAppTextConstants.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark
                          ? VStoreAppColors.white
                          : VStoreAppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark
                          ? VStoreAppColors.white
                          : VStoreAppColors.primary,
                    )),
          ]),
        ),
      ],
    );
  }
}
