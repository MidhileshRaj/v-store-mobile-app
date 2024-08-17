
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:v_store/utils/constants/colors.dart';
import 'package:v_store/utils/constants/sizes.dart';

class LoginScreenFooter extends StatelessWidget {
  const LoginScreenFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: VStoreAppColors.primary,
            border: Border.all(color: VStoreAppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Text(" G ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        const Gap(VStoreAppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            color: VStoreAppColors.primary,
            border: Border.all(color: VStoreAppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Text(" F ",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}