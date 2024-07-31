
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../screens/home/widgets/home_screen.dart';

class NavigationMenuController extends GetxController {
  final Rx<int> selecetdIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.orange,
    ),
  ];
}
