import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v_store/common/styles/spacing_style.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_constants.dart';
import '../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.message,
      required this.subTitle,
      required this.image,
      required this.onPressed});

  final String message, subTitle, image;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: VStoreAppSpacingStyle.paddingWIthAppBarHeight,
          child: Column(
            children: [
              Image(
                image: AssetImage(image),
                width: VStoreAppHelperFunctions.screenWidth() * .75,
              ),
              const Gap(
                VStoreAppSizes.spaceBtwSection,
              ),

              /// Title and Subtitle
              ///
              Text(
                message,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const Gap(VStoreAppSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const Gap(VStoreAppSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(VStoreAppTextConstants.continueButton),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
