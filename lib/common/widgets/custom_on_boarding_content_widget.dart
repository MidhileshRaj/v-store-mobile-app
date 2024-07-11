
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/helpers/helper_functions.dart';

class CustomOnBoardingContentWidget extends StatelessWidget {
  const CustomOnBoardingContentWidget({
    super.key,
    required this.imagePath,
    required this.titleMain,
    required this.titleSub,
    required this.titleDesc,
  });

  final String imagePath;
  final String titleMain;
  final String titleSub;
  final String titleDesc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(VStoreAppSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: VStoreAppHelperFunctions.screenWidth() * .8,
            height: VStoreAppHelperFunctions.screenHeight() * .6,
            image: AssetImage(imagePath),
          ),
          Text(
            titleMain,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const Gap(VStoreAppSizes.spaceBtwItems),
          Text(
            titleSub,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const Gap(VStoreAppSizes.spaceBtwItems),
          Text(
            titleDesc,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
