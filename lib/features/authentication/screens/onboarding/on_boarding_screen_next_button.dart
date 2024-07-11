import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:v_store/features/authentication/controllers/onboarding/on_boarding_screen_controller.dart';
import 'package:v_store/utils/constants/colors.dart';
import 'package:v_store/utils/devices/device_utilities.dart';
import 'package:v_store/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/sizes.dart';
import '../login/login_screen.dart';

class OnBoardingScreenNextButton extends StatelessWidget {
  const OnBoardingScreenNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = VStoreAppHelperFunctions.isDarkMode(context);
    return Positioned(
        right: VStoreAppSizes.defaultSpace,
        bottom: VStoreAppDeviceUtils.getBottomNavBarHeight(),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? VStoreAppColors.primary : Colors.black),
          onPressed: () => OnBoardingScreenController.instance.nextPage(),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}
