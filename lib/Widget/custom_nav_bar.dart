import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/menuScreen.dart';
import 'package:monkey_meal/Screens/moreScreen.dart';
import 'package:monkey_meal/Screens/offerrScreen.dart';
import 'package:monkey_meal/Screens/profileScreen.dart';
import 'package:monkey_meal/const/color.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../Screens/homeScreen.dart';

class CustomBar extends StatefulWidget {
  const CustomBar({Key? key}) : super(key: key);

  @override
  State<CustomBar> createState() => _CustomBarState();
}

// بدها تعديل راجعي اكوادك
class _CustomBarState extends State<CustomBar> {
  final bool home;
  final bool menu;
  final bool offer;
  final bool profile;
  final bool more;

  _CustomBarState(
      {this.home = false,
      this.menu = false,
      this.offer = false,
      this.profile = false,
      this.more = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: CustomNavBarClipper(),
              child: Container(
                width: helper.getScreenWidth(context),
                height: 70,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (!menu) {
                            Navigator.of(context)
                                .pushReplacementNamed(Menu.routename);
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            menu
                                ? Image.asset("assets/images/virtual/menu.png")
                                : Image.asset("assets/images/virtual/more.png"),
                            menu
                                ? const Text(
                                    "Offer",
                                    style: TextStyle(color: AppColor.orange),
                                  )
                                : const Text("menu"),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (!offer) {
                            Navigator.of(context)
                                .pushReplacementNamed(Offer.routename);
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            offer
                                ? Image.asset(
                                    "assets/images/virtual/bag_filled.png")
                                : Image.asset("assets/images/virtual/bag.png"),
                            offer
                                ? const Text("Offers",
                                    style: TextStyle(color: AppColor.orange))
                                : const Text("Offers"),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (!profile) {
                            Navigator.of(context)
                                .pushReplacementNamed(Profile.routename);
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            profile
                                ? Image.asset(
                                    "assets/images/virtual/user_filled.png")
                                : Image.asset("assets/images/virtual/user.png"),
                            profile
                                ? const Text("Profile",
                                    style: TextStyle(color: AppColor.orange))
                                : const Text("Profile"),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (!more) {
                            Navigator.of(context)
                                .pushReplacementNamed(More.routename);
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            more
                                ? Image.asset(
                                    "assets/images/virtual/menu_filled.png")
                                : Image.asset("assets/images/virtual/more.png"),
                            more
                                ? const Text("Profile",
                                    style: TextStyle(color: AppColor.orange))
                                : const Text("More"),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 60,
              width: 60,
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: AppColor.orange,
                onPressed: () {
                  if (!home) {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routename);
                  }
                },
                child: Image.asset(
                  "assets/images/virtual/home_white.png",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// ارقام ضاربة عدليهاااااااااا
class CustomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.3, 0);
    path.quadraticBezierTo(
      size.width * 0.375,
      0,
      size.width * 0.375,
      size.height * 0.1,
    );
    path.cubicTo(
      size.width * 0.4,
      size.height * 0.9,
      size.width * 0.6,
      size.height * 0.9,
      size.width * 0.625,
      size.height * 0.1,
    );
    path.quadraticBezierTo(
      size.width * 0.625,
      0,
      size.width * 0.7,
      0.1,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
