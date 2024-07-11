
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_constants.dart';

class LoginScreenHeader extends StatelessWidget {
  const LoginScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 160,
          image: AssetImage(VStoreAppImages.onBoardingImage4),
        ),
        Text(
          VStoreAppTextConstants.appName,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const Gap(VStoreAppSizes.defaultSpace),
        Text(
          VStoreAppTextConstants.introText,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
