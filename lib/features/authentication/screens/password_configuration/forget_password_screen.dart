import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:v_store/features/authentication/screens/password_configuration/reset_password_screen.dart';
import 'package:v_store/utils/constants/sizes.dart';
import 'package:v_store/utils/constants/text_constants.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(VStoreAppSizes.defaultSpace),
        child: Column(
          children: [
            /// Heading
            Text(
              VStoreAppTextConstants.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Gap(VStoreAppSizes.spaceBtwItems),
            Text(
              VStoreAppTextConstants.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Gap(VStoreAppSizes.spaceBtwSection),

            /// Textfields
            TextFormField(
              decoration: const InputDecoration(
                  labelText: VStoreAppTextConstants.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const Gap(VStoreAppSizes.spaceBtwSection),

            /// Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.off(() => const ResetPasswordScreen());
                  },
                  child: const Text(VStoreAppTextConstants.submit)),
            )
          ],
        ),
      ),
    );
  }
}
