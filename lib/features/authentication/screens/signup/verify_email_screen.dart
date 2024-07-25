import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:v_store/common/widgets/success_screen.dart';
import 'package:v_store/features/authentication/screens/login/login_screen.dart';
import 'package:v_store/utils/constants/image_strings.dart';
import 'package:v_store/utils/constants/sizes.dart';
import 'package:v_store/utils/constants/text_constants.dart';
import 'package:v_store/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(VStoreAppSizes.defaultSpace),
            child: Column(
              children: [
                /// Image

                Image(
                  image: const AssetImage(VStoreAppImages.verifyEmailPage),
                  width: VStoreAppHelperFunctions.screenWidth() * .75,
                ),
                const SizedBox(
                  height: VStoreAppSizes.spaceBtwSection,
                ),

                /// Title and Subtitle
                ///
                Text(
                  VStoreAppTextConstants.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const Gap(VStoreAppSizes.spaceBtwItems),
                Text(
                  "examplegamil.gmail.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const Gap(VStoreAppSizes.spaceBtwItems),
                Text(
                  VStoreAppTextConstants.confirmEmailDescription,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,
                ),
                const Gap(VStoreAppSizes.spaceBtwSection),

                /// Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          message: VStoreAppTextConstants.yourAccountCreated,
                          subTitle:
                              VStoreAppTextConstants.yourAccountCreatedSubtitle,
                          image: VStoreAppImages.verifyEmailPage,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(VStoreAppTextConstants.continueButton),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(VStoreAppTextConstants.resend),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
