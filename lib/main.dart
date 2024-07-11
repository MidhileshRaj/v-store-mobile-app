import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:v_store/utils/theme/theme.dart';

import 'features/authentication/screens/onboarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
      theme: VStoreAppTheme.lightTheme,
      darkTheme: VStoreAppTheme.darkTheme,
      themeMode: ThemeMode.system,
    );
  }
}
