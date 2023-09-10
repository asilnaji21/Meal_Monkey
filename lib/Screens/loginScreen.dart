import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/forgetPwScreen.dart';
import 'package:monkey_meal/Screens/signUpScreen.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/custom_text_input_field.dart';
import 'package:monkey_meal/Utils/helper.dart';

import 'homeScreen.dart';

class LoginScreen extends StatefulWidget {
  static const routename = '/loginscreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailTextController = TextEditingController();
  final _passTextController = TextEditingController();
  final _passFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  var _obscureText = true;

  @override
  void dispose() {
    _emailTextController.dispose();
    _passTextController.dispose();
    _passFocusNode.dispose();
    super.dispose();
  }

  void _submitFormOnLogin() {
    final isValid = _formKey.currentState!.validate();
    // FocusScope.of(context).unfocus();
    if (isValid) {
      print('THe form is valid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: helper.getScreenHeight(context),
          width: helper.getScreenWidth(context),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 30,
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text(
                        "login",
                        style: helper.getTheme(context).headline3,
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
                        onChanged1: (value) {},
                        controller1: _emailTextController,
                        validator1: (value) {
                          if (value!.isEmpty || !value.contains('@')) {
                            return 'Please enter a valid email address';
                          } else {
                            return null;
                          }
                        },
                        hinttexttt: "Your Email",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      cutomtextinput(
                        onEditingComplete1: () {
                          _submitFormOnLogin();
                        },
                        controller1: _passTextController,
                        validator1: (value) {
                          if (value!.isEmpty || value.length < 7) {
                            return 'Please enter a valid password';
                          } else {
                            return null;
                          }
                        },
                        hinttexttt: "Password",
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          height: 45,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  Navigator.of(context).pushReplacementNamed(
                                      HomeScreen.routename);
                                } else {
                                  print('not valid');
                                }
                              },
                              child: const Text("Login"))),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed(RestPassword.routename);
                          },
                          child: const Text("Forgot Your Password")),
                      const SizedBox(
                        height: 44,
                      ),
                      const Text("Or Login With"),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF367FC0))),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/virtual/fb.png"),
                                const SizedBox(
                                  width: 32.4,
                                ),
                                const Text("Login With FaceBook")
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFDD4B39))),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/virtual/google.png"),
                                const SizedBox(
                                  width: 32.4,
                                ),
                                const Text("Login With Google")
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an Account?"),
                          InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(SignUpScreen.routename);
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: AppColor.orange,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
