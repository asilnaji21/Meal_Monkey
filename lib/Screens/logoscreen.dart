import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/loginScreen.dart';
import 'package:monkey_meal/Screens/signUpScreen.dart';

class LogoScreen extends StatelessWidget {
  static const routename = '/logoscreen';

  const LogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 400,
          child: Image.asset(
            "assets/images/virtual/mil.png",
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 66,
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 234, 85, 4),
            borderRadius: BorderRadius.circular(25),
          ),
          child: MaterialButton(
            //  focusElevation: ,
            //shape: OutlineInputBorder(borderRadius: ).,
            minWidth: 266,
            //height: 22,
            onPressed: () {
              Navigator.of(context).pushNamed(LoginScreen.routename);
            },
            child: const Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        OutlinedButton(
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 16, horizontal: 73)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
            side: MaterialStateProperty.all(const BorderSide(
              width: 2,
              color: Color(0xffFC6011),
            )),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(SignUpScreen.routename);
          },
          child: const Text(
            "Create An Account",
            style: TextStyle(
              color: Color(0xffFC6011),
            ),
          ),
        )
      ],
    ));
  }
}
