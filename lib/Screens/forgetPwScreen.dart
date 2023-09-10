import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/sentOTPScreen.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../Widget/custom_text_input_field.dart';

class RestPassword extends StatelessWidget {
  static const routename = '/restpassword';
  const RestPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: helper.getScreenWidth(context),
        height: helper.getScreenHeight(context),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                Text(
                  "Reset Password",
                  style: helper.getTheme(context).headline6,
                ),
                const SizedBox(
                  height: 19,
                ),
                const Text(
                  " Please enter your email to receive a link to  create a new password via email",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                cutomtextinput(
                  hinttexttt: "Email",
                ),
                const SizedBox(
                  height: 43,
                ),
                SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(OtpScreen.routename);
                        },
                        child: const Text("Send")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
