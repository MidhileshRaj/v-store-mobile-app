import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:v_store/utils/constants/image_strings.dart';
import 'package:v_store/utils/constants/sizes.dart';
import 'package:v_store/utils/constants/text_constants.dart';
import 'package:v_store/utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VStoreAppSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(VStoreAppImages.verifyEmailPage),
                width: VStoreAppHelperFunctions.screenWidth() * .75,
              ),
              const Gap(
                VStoreAppSizes.spaceBtwSection,
              ),

              /// Title and Subtitle
              ///
              Text(
                VStoreAppTextConstants.resetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const Gap(VStoreAppSizes.spaceBtwItems),
              Text(
                VStoreAppTextConstants.resetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const Gap(VStoreAppSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(VStoreAppTextConstants.submit),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(VStoreAppTextConstants.resendEmail))
            ],
          ),
        ),
      ),
    );
  }
}
