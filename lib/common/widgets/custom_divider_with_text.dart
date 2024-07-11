
import 'package:flutter/material.dart';
import 'package:v_store/utils/constants/colors.dart';

import '../../utils/constants/text_constants.dart';
import '../../utils/helpers/helper_functions.dart';

class CustomDividerWithText extends StatelessWidget {
  const CustomDividerWithText({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final dark = VStoreAppHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: dark ? VStoreAppColors.darkerGrey : Colors.grey,
              thickness: .5,
              indent: 60,
              endIndent: 5,
            )),
        Text(
          VStoreAppTextConstants.orSignInWith,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
              color: dark ? VStoreAppColors.darkerGrey : Colors.grey,
              thickness: .5,
              indent: 5,
              endIndent: 60,
            ))
      ],
    );
  }
}
