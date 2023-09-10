// ignore: file_names
import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/introScreen.dart';
import 'package:monkey_meal/Utils/helper.dart';
import '../Widget/custom_text_input_field.dart';

class NewPasword extends StatelessWidget {
  static const routename = '/newpassword';
  const NewPasword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: SizedBox(
          width: helper.getScreenWidth(context),
          height: helper.getScreenHeight(context),
          child: Column(
            children: [
              Text(
                "New Password",
                textAlign: TextAlign.center,
                style: helper.getTheme(context).headline5,
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Please enter your email to receive a link to  create a new password via email",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              cutomtextinput(
                hinttexttt: "New Password",
              ),
              const SizedBox(
                height: 24,
              ),
              cutomtextinput(
                hinttexttt: "Confirm Password",
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(FindFoodIntroo.routename);
                      },
                      child: const Text("Next")))
            ],
          ),
        ),
      )),
    );
  }
}
