import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'default_localizations.dart';

class FTLocalizationsDelegate extends LocalizationsDelegate<FTLocalizations> {

  FTLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    ///支持中文和英语
    return true;
  }

  ///根据locale，创建一个对象用于提供当前locale下的文本显示
  @override
  Future<FTLocalizations> load(Locale locale) {
    return new SynchronousFuture<FTLocalizations>(new FTLocalizations(locale));
  }

  @override
  bool shouldReload(LocalizationsDelegate<FTLocalizations> old) {
    return false;
  }

  ///全局静态的代理
  static FTLocalizationsDelegate delegate = new FTLocalizationsDelegate();
}
