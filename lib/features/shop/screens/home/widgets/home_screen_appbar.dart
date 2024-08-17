
import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/prodoct/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_constants.dart';

class VStoreAppHomeAppBar extends StatelessWidget {
  const VStoreAppHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return VStoreAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            VStoreAppTextConstants.homeTitleMain,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: VStoreAppColors.grey),
          ),
          Text(
            "WE Store Deta",
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: VStoreAppColors.grey),
          ),
        ],
      ),
      actions: [
        VStoreCartCounter(onPressed: () {  },)
      ],
    );
  }
}