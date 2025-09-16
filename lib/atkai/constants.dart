import 'package:flutter/material.dart';

// Define your colors
class AppColors {
  static const Color primary = Color(0xfff5f5f5);
  static const Color accent = Color(0xFFEB1555);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;
}

// Define your text styles
class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const TextStyle body = TextStyle(fontSize: 16, color: AppColors.grey);
}
