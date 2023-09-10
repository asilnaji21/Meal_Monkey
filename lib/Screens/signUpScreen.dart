import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/loginScreen.dart';
import 'package:monkey_meal/Utils/helper.dart';
import '../Widget/custom_text_input_field.dart';
import '../const/color.dart';

class SignUpScreen extends StatelessWidget {
  static const routename = '/signupscreen';
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: helper.getScreenHeight(context),
      width: helper.getScreenWidth(context),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
          child: Column(
            children: [
              Text(
                "SignUp",
                style: helper.getTheme(context).headline4,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Add your details to login",
              ),
              const SizedBox(
                height: 10,
              ),
              cutomtextinput(
                hinttexttt: "Name",
              ),
              const Spacer(),
              cutomtextinput(
                hinttexttt: "Email",
              ),
              const Spacer(),
              cutomtextinput(
                hinttexttt: "Mobile No",
              ),
              const Spacer(),
              cutomtextinput(
                hinttexttt: "Address",
              ),
              const Spacer(),
              cutomtextinput(
                hinttexttt: "Password",
              ),
              const Spacer(),
              cutomtextinput(
                hinttexttt: "ConfirmPassword",
              ),
              const Spacer(),
              SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("SignUp"))),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account?"),
                  InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushReplacementNamed(LoginScreen.routename);
                      },
                      child: const Text(
                        " Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.orange),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
