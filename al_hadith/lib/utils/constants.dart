import 'package:flutter/material.dart';

class AppConstants {
  // Database Constants
  static const String databaseName = 'hadith_bn_test.db';

  // API Constants (if applicable)
  // static const String apiBaseUrl = 'https://api.tanvir.com';

  // Colors
  static const Color primaryColor = Color(0xFF118C6D);
  static const Color secondaryColor = Color(0xFF4CAF50);
  static const Color thirdColor = Color(0xFF44D2B9);
  static const Color backgroundColor = Color(0xFFF5F5F5);

  // Text Styles
  static const TextStyle headingTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontFamily: 'ArabicFont', // todo Replace with your Arabic font
  );

  static const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16,
    color: Colors.grey,
    fontFamily: 'BengaliFont', // todo Replace with your Bengali font
  );

  // Other Constants
  static const int maxRetryAttempts = 3;
  static const double defaultPadding = 16.0;

  // App Name and Locale
  static const String appName = 'Al Hadith'; // App name in Arabic or Bengali
  static const Locale defaultLocale = Locale('ar', 'SA'); // Arabic locale
}
