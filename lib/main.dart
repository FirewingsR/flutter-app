import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_wyz/localization/ft_localizations_delegate.dart';
import 'package:flutter_wyz/page/version/version.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FTLocalizationsDelegate.delegate,
      ],
      title: 'CloseFriend',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Version(),
    );
  }
}
