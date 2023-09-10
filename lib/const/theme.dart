import 'package:flutter/material.dart';

import 'color.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

    scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                AppColor.orange,
              ),
              shape: MaterialStateProperty.all(
                const StadiumBorder(),
              ),
              elevation: MaterialStateProperty.all(0),
            ),
          ),
          textTheme: const TextTheme(
            headline3: TextStyle(
              color: AppColor.primary,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            headline4: TextStyle(
              color: AppColor.secondary,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            headline6: TextStyle(
              color: AppColor.primary,
              fontSize: 24,
            ),
          ),
  );
}
