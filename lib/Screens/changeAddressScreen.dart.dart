import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/custom_nav_bar.dart';
import '../Widget/custom_search_bar.dart';

class ChangeAddressScreen extends StatelessWidget {
  static const routename = "\changesaddress";
  const ChangeAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                          ),
                        ),
                        Text(
                          "Change Address",
                          style: helper.getTheme(context).headline5,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Stack(
                    children: [
                      SizedBox(
                          height: helper.getScreenHeight(context) * 0.6,
                          child: Image.asset(
                            "assets/images/real/map.png",
                            fit: BoxFit.fitHeight,
                          )),
                      Positioned(
                          bottom: 30,
                          right: 40,
                          child: Image.asset(
                              "assets/images/virtual/current_loc.png")),
                      Positioned(
                          top: 70,
                          right: 180,
                          child: Image.asset("assets/images/virtual/loc.png")),
                      Positioned(
                        top: 170,
                        left: 30,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 20,
                          ),
                          width: helper.getScreenWidth(context) * 0.45,
                          decoration: const ShapeDecoration(
                            color: AppColor.orange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                          child: Column(children: const [
                            Text(
                              "Your Current Location",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "653 Nostrand Ave., Brooklyn, NY 11216",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ]),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomSearch(),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: ShapeDecoration(
                            shape: const CircleBorder(),
                            color: AppColor.orange.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.star_rounded,
                            color: AppColor.orange,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
                          child: Text(
                            "Choose a saved place",
                            style: TextStyle(
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomBar())
        ],
      ),
    );
  }
}























































// class CustomTriangleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path()
//       ..moveTo(0, size.height)
//       ..lineTo(size.width, 0)
//       ..lineTo(size.width, size.height)
//       ..lineTo(0, size.height);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
