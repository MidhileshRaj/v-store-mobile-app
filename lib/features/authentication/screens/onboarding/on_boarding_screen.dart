import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_store/features/authentication/controllers/onboarding/on_boarding_screen_controller.dart';
import 'package:v_store/features/authentication/screens/onboarding/custom_on_boarding_page_indicator.dart';
import 'package:v_store/utils/constants/image_strings.dart';
import 'package:v_store/utils/constants/sizes.dart';
import 'package:v_store/utils/devices/device_utilities.dart';
import '../../../../common/widgets/custom_on_boarding_content_widget.dart';
import 'on_boarding_screen_next_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingScreenController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              CustomOnBoardingContentWidget(
                imagePath: VStoreAppImages.onBoardingImage1,
                titleMain: "We Provide",
                titleSub:
                    'An online platform with various of branded items with very low budgets',
                titleDesc: '"with services and term and condition",',
              ),
              CustomOnBoardingContentWidget(
                imagePath: VStoreAppImages.onBoardingImage2,
                titleMain: "We Have",
                titleSub:
                    'Various of laxuary products and budget friendly products with high quality',
                titleDesc: 'Quality matter is depens on Brand',
              ),
              CustomOnBoardingContentWidget(
                imagePath: VStoreAppImages.onBoardingImage3,
                titleMain: "We Do",
                titleSub:
                    'Fast And Safe delivery of product by our own delivery agents ',
                titleDesc: 'According to distance the price changes',
              ),
            ],
          ),

          /// Skip Button
          Positioned(
            top: VStoreAppDeviceUtils.getAppBarHeight(),
            right: VStoreAppSizes.defaultSpace,
            child: TextButton(
              child: const Text("Skip"),
              onPressed: () {
                controller.skipPage();
              },
            ),
          ),

          /// Dot Navigation page

          const CustomOnboardingPageIndicator(),

          /// Circular Button
          const OnBoardingScreenNextButton()
        ],
      ),
    );
  }
}
