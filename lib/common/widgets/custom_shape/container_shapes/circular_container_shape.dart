import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class VStoreAppCircularContainer extends StatelessWidget {
  const VStoreAppCircularContainer({
    super.key,
    this.height=400,
    this.width=400,
    this.radius = 400,
    this.padding = 0,
    this.child,
    this.backGroundColor = VStoreAppColors.white,
  });

  final double? height;
  final double? width;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: VStoreAppColors.textWhite.withOpacity(.14)),
      child: child,
    );
  }
}
