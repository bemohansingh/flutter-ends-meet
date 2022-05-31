import 'package:flutter/cupertino.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('hi'),
  ];

  static String getFlag(String code) {
    switch (code) {
      case 'hi':
        return '🇮🇳';
      case 'en':
      default:
        return '🇺🇸';
    }
  }
}
