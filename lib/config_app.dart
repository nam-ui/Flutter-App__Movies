import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

wiredashThemeData(color) {
  final wiredashThemeData = WiredashThemeData(
      primaryColor: color,
      brightness: Brightness.light,
      secondaryColor: Colors.lime);
  return wiredashThemeData;
}

final supportedLocales = [Locale('ja', 'JA'), Locale('vi', 'VN')];

Locale localeResolutionCallback(
    Iterable<Locale> supportedLocales, Locale deviceLocate) {
  for (final Locale locale in supportedLocales) {
    if (locale.languageCode == deviceLocate.languageCode &&
        locale.countryCode == deviceLocate.countryCode) {
      return deviceLocate;
    }
  }
  return supportedLocales.first;
}
