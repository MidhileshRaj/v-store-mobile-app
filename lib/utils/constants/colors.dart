import 'package:flutter/material.dart';

class VStoreAppColors {
  VStoreAppColors._();

  // Basic Colors
  static const Color primary = Color(0xFF572c81);
  static const Color secondary = Color(0xFFFFE24B);
  static const Color accent = Color(0xFFb0c7ff);

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Gradient Color
  static const Gradient lightGradient = LinearGradient(colors: [
      Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4),
  ]);

  // BackGround Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // BackGround Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = VStoreAppColors.white.withOpacity(.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF572c81);
  static const Color buttonSecondary = Color(0xFF572c81);
  static const Color buttonDisabled = Color(0xFF572c81);

  // Border Color
  static const Color borderPrimary = Color(0xFF572c81);
  static const Color borderSecondary = Color(0xFF572c81);

  // Error and Validation Color
  static const Color error = Color(0xFFD32F2F);
  static const Color sucess = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Colors
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4f4f4f);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
