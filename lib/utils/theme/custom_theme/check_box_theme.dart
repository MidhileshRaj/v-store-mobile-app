import 'package:flutter/material.dart';
import 'package:v_store/utils/constants/colors.dart';
import 'package:v_store/utils/constants/colors.dart';

class VStoreAppCheckBoxTheme{
  VStoreAppCheckBoxTheme._();


  ///Customizable light checkbox theme
  static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    },),
    fillColor:WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return VStoreAppColors.primary;
      }else{
        return Colors.transparent;
      }
    },),
  );

  ///Customizable light checkbox theme
  static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    },),
    fillColor:WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected)){
        return VStoreAppColors.primary;
      }else{
        return Colors.transparent;
      }
    },),
  );
}