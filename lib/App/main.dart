import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monkey_meal/Screens/splashScreen.dart';
import 'package:monkey_meal/const/theme.dart';
import '../Utils/route.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1880, 2160),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getApplicationTheme(),
          home: const SplashScreen(),
          routes: routes,
        );
      },
    );
  }
}
