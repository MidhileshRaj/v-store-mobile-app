
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';
import 'package:v_store/features/authentication/screens/signup/widgets/privacy_policy_checkbox.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_constants.dart';

class SignUpScreenForm extends StatelessWidget {
  const SignUpScreenForm({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: VStoreAppTextConstants.fName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
              const Gap(VStoreAppSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: VStoreAppTextConstants.lName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Gap(VStoreAppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: VStoreAppTextConstants.email,
              prefixIcon: Icon(
                Iconsax.user_edit1,
              ),
            ),
          ),
          const Gap(VStoreAppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: VStoreAppTextConstants.phone,
              prefixIcon: Icon(
                Iconsax.mobile,
              ),
            ),
          ),
          const Gap(VStoreAppSizes.spaceBtwInputFields),
          TextFormField(
            decoration: const InputDecoration(
              labelText: VStoreAppTextConstants.address,
              prefixIcon: Icon(
                Iconsax.location,
              ),
            ),
          ),
          const Gap(VStoreAppSizes.spaceBtwInputFields),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: VStoreAppTextConstants.password,
                prefixIcon: Icon(
                  Iconsax.password_check,
                ),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          /// Terms And Condition section
          const Gap(VStoreAppSizes.spaceBtwSection),
          const PrivacyPolicyCheckBox()
        ],
      ),
    );
  }
}
