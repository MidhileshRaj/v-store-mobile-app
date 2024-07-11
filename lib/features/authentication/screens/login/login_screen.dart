import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v_store/common/styles/spacing_style.dart';
import 'package:v_store/features/authentication/screens/login/widget/login_screen_footer.dart';
import 'package:v_store/features/authentication/screens/login/widget/login_screen_form.dart';
import 'package:v_store/features/authentication/screens/login/widget/login_screen_header.dart';
import 'package:v_store/utils/constants/sizes.dart';

import '../../../../common/widgets/custom_divider_with_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: VStoreAppSpacingStyle.paddingWIthAppBarHeight,
          child: Column(
            children: [
              /// Logo  and Header part
              LoginScreenHeader(),
              Gap(VStoreAppSizes.defaultSpace),

              /// Login form
              LoginScreenForm(),

              Gap(VStoreAppSizes.spaceBtwSection),

              /// Divider section
              CustomDividerWithText(),
              Gap(VStoreAppSizes.spaceBtwSection),

              /// Footer with signup methods
              LoginScreenFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
