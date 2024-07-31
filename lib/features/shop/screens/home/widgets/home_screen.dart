import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shape/container_shapes/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            VStoreAppPrimaryHeaderContainer(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
