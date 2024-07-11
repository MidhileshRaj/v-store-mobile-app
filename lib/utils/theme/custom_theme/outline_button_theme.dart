import 'package:flutter/material.dart';
import 'package:v_store/utils/constants/colors.dart';
import 'package:v_store/utils/constants/colors.dart';

class VStoreOutlinedButtonTheme{
  VStoreOutlinedButtonTheme._();

  static final ligtOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation:0 ,
      foregroundColor:Colors.black ,
      side:const BorderSide(color:VStoreAppColors.primary) ,
      textStyle: const TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    )
  );
  static final darkOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation:0 ,
      foregroundColor:Colors.white ,
      side:const BorderSide(color:VStoreAppColors.primary) ,
      textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    )
  );
}