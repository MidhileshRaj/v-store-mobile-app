

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:v_store/features/authentication/screens/password_configuration/forget_password_screen.dart';
import 'package:v_store/utils/constants/text_constants.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../signup/signup_screen.dart';

class LoginScreenForm extends StatelessWidget {
  const LoginScreenForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: VStoreAppTextConstants.email),
          ),
          const Gap(VStoreAppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: VStoreAppTextConstants.password),
          ),
          const Gap(VStoreAppSizes.spaceBtwInputFields),
          Row(
            children: [
              /// Remember me
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              const Text(VStoreAppTextConstants.rememberMeCheckbox),
              const Spacer(),
              /// Forgot password
              TextButton(
                  onPressed: ()=>Get.to(()=>const ForgetPasswordScreen()),
                  child: const Text(
                      VStoreAppTextConstants.forgotPassword))
            ],
          ),

          /// Login Button
          const Gap(VStoreAppSizes.spaceBtwSection),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(VStoreAppTextConstants.login),
            ),
          ),
          const Gap(VStoreAppSizes.spaceBtwItems),

          ///
          /// Signup Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Get.to(()=>const SignupScreen());
              },
              child: const Text(VStoreAppTextConstants.signUp),
            ),
          ),
        ],
      ),
    );
  }
}
