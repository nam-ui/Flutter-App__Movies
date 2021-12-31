import 'package:app_tieng_nhat/utils/shareds/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

import 'localization.dart';

String getTranslated(BuildContext context, String key) {
  return Localization.of(context).getTranslatedValues(key);
}

const String JAPPANESE = 'ja';
const String VIETNAMESE = 'vi';

const String LANGUAGE_CODE = 'languageCode';

Future<Locale> setLocale(String languageCode) async {
  await shareds.setLanguageCode(languageCode);
  shareds.getDataLanguageSharedCommon();
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  Locale _temp;
  switch (languageCode) {
    case JAPPANESE:
      _temp = Locale(languageCode, 'JA');
      break;
    case VIETNAMESE:
      _temp = Locale(languageCode, 'VN');
      break;
    default:
      _temp = Locale(VIETNAMESE, 'VN');
  }
  return _temp;
}

Future<Locale> getLocale() async {
  String languageCode = await shareds.getLanguageCode() ?? VIETNAMESE;
  return _locale(languageCode);
}
