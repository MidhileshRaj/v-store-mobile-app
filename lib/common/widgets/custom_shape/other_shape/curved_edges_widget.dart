

import 'package:flutter/material.dart';
import 'package:v_store/common/widgets/custom_shape/other_shape/curved_edges_clipper.dart';

class VStoreAppCurvedEdgeWidget extends StatelessWidget {
  const VStoreAppCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdgesClipper(),
      child:child,
    );
  }
}
