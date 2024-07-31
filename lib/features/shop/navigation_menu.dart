import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:v_store/utils/constants/colors.dart';
import 'package:v_store/utils/helpers/helper_functions.dart';

import 'controllers/home_controller/navigation/navigation_bar_controller.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final getXController = Get.put(NavigationMenuController());
    final darkMode = VStoreAppHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: darkMode ? VStoreAppColors.black : Colors.white,
          indicatorColor: darkMode
              ? VStoreAppColors.white.withOpacity(.5)
              : VStoreAppColors.black.withOpacity(.5),
          height: 80,
          elevation: 0,
          selectedIndex: getXController.selecetdIndex.value,
          onDestinationSelected: (index) {
            getXController.selecetdIndex.value = index;
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.category), label: "Store"),
            NavigationDestination(
                icon: Icon(Iconsax.favorite_chart), label: "Cart"),
            NavigationDestination(
                icon: Icon(Icons.person_outlined), label: "Profile"),
          ],
        ),
      ),
      body:
          Obx(() => getXController.screens[getXController.selecetdIndex.value]),
    );

  }
}

