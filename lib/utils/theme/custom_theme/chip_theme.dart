import 'package:flutter/material.dart';
import 'package:v_store/utils/constants/colors.dart';
import 'package:v_store/utils/constants/colors.dart';

class VStoreAppChipTheme{
  VStoreAppChipTheme._();


  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(.3),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: VStoreAppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.white,
  );



  static ChipThemeData darktChipTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: VStoreAppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.white,
  );
}