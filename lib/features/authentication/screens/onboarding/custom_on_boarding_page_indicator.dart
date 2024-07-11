
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:v_store/features/authentication/controllers/onboarding/on_boarding_screen_controller.dart';
import 'package:v_store/utils/constants/colors.dart';
import 'package:v_store/utils/constants/sizes.dart';
import 'package:v_store/utils/devices/device_utilities.dart';
import 'package:v_store/utils/helpers/helper_functions.dart';

class CustomOnboardingPageIndicator extends StatelessWidget {
  const CustomOnboardingPageIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingScreenController.instance;
    final dark = VStoreAppHelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: VStoreAppDeviceUtils.getBottomNavBarHeight() + 25,
      left: VStoreAppSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect:  ExpandingDotsEffect(
            activeDotColor:dark? VStoreAppColors.light:VStoreAppColors.primary, dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationOnClick,
        count: 3,
      ),
    );
  }
}
