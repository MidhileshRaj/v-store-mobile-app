
import 'package:flutter/material.dart';
import 'package:v_store/common/widgets/custom_shape/container_shapes/circular_container_shape.dart';

import '../../../../utils/constants/colors.dart';
import '../other_shape/curved_edges_widget.dart';

class VStoreAppPrimaryHeaderContainer extends StatelessWidget {
  const VStoreAppPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return VStoreAppCurvedEdgeWidget(
      child:  Container(
        padding: const EdgeInsets.all(0),
        decoration: const BoxDecoration(
          color: VStoreAppColors.primary,
        ),
        child:  SizedBox(
          height: 400,
          child: Stack(
            children: [
              const Positioned(
                top:  -130,right: -280,
                child: VStoreAppCircularContainer(
                  backGroundColor: VStoreAppColors.white,
                ),
              ),const Positioned(
                top:  10,right: -280,
                child: VStoreAppCircularContainer(
                  backGroundColor: VStoreAppColors.white,
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}


