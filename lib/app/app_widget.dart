import 'package:cats/app/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caats App',
      theme: ThemeData(
        fontFamily: 'Meows',
        scaffoldBackgroundColor: kPrimaryColor,
        appBarTheme: AppBarTheme(color: kAppBarColor),
      ),
    ).modular();
  }
}
