import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v_store/features/authentication/screens/signup/widgets/signup_screen_form.dart';
import 'package:v_store/utils/constants/sizes.dart';
import 'package:v_store/utils/constants/text_constants.dart';

import '../../../../common/widgets/custom_divider_with_text.dart';
import '../login/widget/login_screen_footer.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(VStoreAppSizes.defaultSpace),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// Title

              const Gap(VStoreAppSizes.spaceBtwSection),

              Text(
                VStoreAppTextConstants.signUp,
                style: Theme.of(context).textTheme.headlineMedium,
              ),


              const Gap(VStoreAppSizes.spaceBtwSection),
              const Gap(VStoreAppSizes.spaceBtwSection),

              /// Signup Form
              const SignUpScreenForm(),

              const Gap(VStoreAppSizes.spaceBtwSection),


              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(VStoreAppTextConstants.createAccount),
                ),
              ),

              const Gap(VStoreAppSizes.spaceBtwSection),
              const Gap(VStoreAppSizes.spaceBtwSection),

              /// Custom Divider

              const CustomDividerWithText(),

              const Gap(VStoreAppSizes.spaceBtwSection),
              const Gap(VStoreAppSizes.spaceBtwSection),

              /// Custom Social Login button

              const LoginScreenFooter(),

            ],
          ),
        ),
      ),
    );
  }
}
