import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/logoscreen.dart';
import 'dart:async';
import 'package:monkey_meal/Utils/helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Timer? _timer;

  _startDealy() {
    _timer = Timer(const Duration(seconds: 10), _goNext);
  }

  _goNext() {
    Navigator.of(context).pushReplacementNamed(LogoScreen.routename);
  }

  @override
  void initState() {
    super.initState();
    _startDealy();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: helper.getScreenWidth(context),
      height: helper.getScreenHeight(context),
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/virtual/splashIcon.png",
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/virtual/MealMonkeyLogo.png"),
          ),
        ],
      ),
    ));
  }
}
