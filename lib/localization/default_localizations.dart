import 'dart:ui';

import 'package:flutter/material.dart';

import 'ft_string_base.dart';
import 'ft_string_en.dart';
import 'ft_string_zh.dart';

///自定义多语言实现
class FTLocalizations {
  final Locale locale;

  FTLocalizations(this.locale);

  ///根据不同 locale.languageCode 加载不同语言对应
  ///GSYStringEn和GSYStringZh都继承了GSYStringBase
  static Map<String, FTStringBase> _localizedValues = {
    'en': new FTStringEn(),
    'zh': new FTStringZh(),
  };

  FTStringBase get currentLocalized {
    if (_localizedValues.containsKey(locale.languageCode)) {
      return _localizedValues[locale.languageCode];
    }
    return _localizedValues["en"];
  }

  ///通过 Localizations 加载当前的 GSYLocalizations
  ///获取对应的 GSYStringBase
  static FTLocalizations of(BuildContext context) {
    return Localizations.of(context, FTLocalizations);
  }

  ///通过 Localizations 加载当前的 GSYLocalizations
  ///获取对应的 GSYStringBase
  static FTStringBase i18n(BuildContext context) {
    return (Localizations.of(context, FTLocalizations) as FTLocalizations)
        .currentLocalized;
  }
}
