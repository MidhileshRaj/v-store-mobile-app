

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:v_store/utils/constants/colors.dart';

class VStoreCartCounter extends StatelessWidget {
  const VStoreCartCounter({
    super.key, required this.onPressed, this.iconColor = VStoreAppColors.white,
  });
  final VoidCallback onPressed;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed:onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color:iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: VStoreAppColors.black.withOpacity(.5),
                borderRadius: BorderRadius.circular(100)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: VStoreAppColors.white,fontSizeFactor: .8),
              ),
            ),
          ),
        )
      ],
    );
  }
}
