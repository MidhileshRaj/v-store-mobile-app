import 'package:flutter/material.dart';
import 'package:v_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:v_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:v_store/utils/theme/custom_theme/check_box_theme.dart';
import 'package:v_store/utils/theme/custom_theme/chip_theme.dart';
import 'package:v_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:v_store/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:v_store/utils/theme/custom_theme/text_field_theme.dart';
import 'package:v_store/utils/theme/custom_theme/text_theme.dart';

class VStoreAppTheme{
  VStoreAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme:  VStoreAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: VStoreBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme:VStoreAppCheckBoxTheme.lightCheckBoxTheme ,
    chipTheme: VStoreAppChipTheme.lightChipTheme,
    elevatedButtonTheme: VStoreAppElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme:VStoreTextFormFieldTheme.lightInputDecorationTheme ,
    outlinedButtonTheme: VStoreOutlinedButtonTheme.ligtOutlinedButtonTheme,
    textTheme: VStoreAppTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme:  VStoreAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: VStoreBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme:VStoreAppCheckBoxTheme.darkCheckBoxTheme ,
    chipTheme: VStoreAppChipTheme.darktChipTheme,
    elevatedButtonTheme: VStoreAppElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme:VStoreTextFormFieldTheme.darkInputDecorationTheme ,
    outlinedButtonTheme: VStoreOutlinedButtonTheme.darkOutlinedButtonTheme,
    textTheme: VStoreAppTextTheme.darkTextTheme,
  );
}