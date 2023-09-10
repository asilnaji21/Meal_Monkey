import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/newPwScreen.dart';
import 'package:monkey_meal/const/color.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../Widget/custom_otp_check.dart';

class OtpScreen extends StatelessWidget {
  static const routename = "/otpscreen";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'We have sent you an OTP to your Mobile',
                style: helper.getTheme(context).headline6,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Please check your mobile number 071*****12 continue to reset your password",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomOtp(),
                  CustomOtp(),
                  CustomOtp(),
                  CustomOtp(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(NewPasword.routename);
                  },
                  child: const Text("Next"),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Didn't Recieve? "),
                  Text(
                    "Click Here",
                    style: TextStyle(
                      color: AppColor.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
