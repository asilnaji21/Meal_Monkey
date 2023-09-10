import 'package:flutter/material.dart';
import 'package:monkey_meal/const/color.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../Widget/custom_nav_bar.dart';
import '../Widget/Textfield.dart';

class Profile extends StatelessWidget {
  static const routename = '/profile';
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
                        style: helper.getTheme(context).headline5,
                      ),
                      Image.asset("assets/images/virtual/cart.png")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ClipOval(
                  child: Container(
                    width: 80,
                    height: 80,
                    child: Image.asset(
                      "assets/images/real/user.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.edit,
                      color: AppColor.orange,
                    ),
                    Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: AppColor.orange,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Hi there Emilia!",
                  style: helper
                      .getTheme(context)
                      .headline5!
                      .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Sign Out",
                  style: helper
                      .getTheme(context)
                      .headline4!
                      .copyWith(fontSize: 15),
                ),
                const SizedBox(
                  height: 14,
                ),
                const CustomTextField(
                  labelTextt1: "Name",
                  value: "Emilia Clarke",
                  Ispassword: false,
                ),
                const SizedBox(
                  height: 14,
                ),
                const CustomTextField(
                  labelTextt1: "Email",
                  value: "emiliaclarke@email.com",
                  Ispassword: false,
                ),
                const SizedBox(
                  height: 14,
                ),
                const CustomTextField(
                  labelTextt1: "Address",
                  value: "No 23, 6th Lane, Colombo 03",
                  Ispassword: false,
                ),
                const SizedBox(
                  height: 14,
                ),
                const CustomTextField(
                  labelTextt1: "Password",
                  value: "**************",
                  Ispassword: true,
                ),
                const SizedBox(
                  height: 14,
                ),
                const CustomTextField(
                  labelTextt1: "Confirm Password",
                  value: "**************",
                  Ispassword: true,
                ),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Save"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
              ],
            ),
          ),
          const Positioned(left: 0, bottom: 0, child: CustomBar()),
        ],
      )),
    );
  }
}
