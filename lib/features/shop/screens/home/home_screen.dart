import 'package:flutter/material.dart';
import 'package:v_store/features/shop/screens/home/widgets/home_screen_appbar.dart';


import '../../../../common/widgets/custom_shape/container_shapes/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar:   ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            VStoreAppPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// Home screen appBar
                  VStoreAppHomeAppBar(

                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
