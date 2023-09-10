// ignore: file_names
import 'package:flutter/material.dart';
import 'package:monkey_meal/const/color.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../Widget/custom_nav_bar.dart';
import '../Widget/custom_drop_dawun.dart';

class ViewDetails extends StatelessWidget {
  static const routename = "/viewdetails";
  const ViewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: helper.getScreenWidth(context),
                          height: helper.getScreenHeight(context) * 0.5,
                          child: Image.asset("assets/images/real/pizza3.jpg",
                              fit: BoxFit.cover),
                        ),
                        Container(
                          height: helper.getScreenHeight(context) * 0.5,
                          width: helper.getScreenWidth(context),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: const [
                                0.0,
                                0.4
                              ],
                                  colors: [
                                Colors.black.withOpacity(0.9),
                                Colors.black.withOpacity(0.0),
                              ])),
                        )
                      ],
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                )),
                            Image.asset('assets/images/virtual/cart_white.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: helper.getScreenHeight(context) * 0.35,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 800,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Container(
                          height: 700,
                          width: double.infinity,
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  "Tandoori Chicken Pizza",
                                  style: helper.getTheme(context).headline5,
                                ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              "assets/images/virtual/star_filled.png"),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                              "assets/images/virtual/star_filled.png"),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                              "assets/images/virtual/star_filled.png"),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                              "assets/images/virtual/star_filled.png"),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          Image.asset(
                                              "assets/images/virtual/star.png")
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Text(
                                "4 Star Ratings",
                                style: TextStyle(color: AppColor.orange),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  "Description",
                                  style: helper.getTheme(context).headline4,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada"),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Divider(
                                  color: AppColor.placeholder,
                                  thickness: 1.5,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text("Customize your Order",
                                    style: helper.getTheme(context).headline4),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const DropDown(),
                              const SizedBox(
                                height: 10,
                              ),
                              const DropDown(),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      Text("Number of Portions",
                                          style: helper
                                              .getTheme(context)
                                              .headline4),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                elevation:
                                                    MaterialStateProperty.all(
                                                        5.0)),
                                            onPressed: () {},
                                            child: const Text("-"),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            height: 35,
                                            width: 55,
                                            decoration: const ShapeDecoration(
                                              shape: StadiumBorder(
                                                side: BorderSide(
                                                    color: AppColor.orange),
                                              ),
                                            ),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    "2",
                                                    style: TextStyle(
                                                      color: AppColor.orange,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                ]),
                                          ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                                elevation:
                                                    MaterialStateProperty.all(
                                                        5.0)),
                                            onPressed: () {},
                                            child: const Text("+"),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: 200,
                                  width: double.infinity,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 120,
                                        decoration: const ShapeDecoration(
                                          color: AppColor.orange,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40),
                                              bottomRight: Radius.circular(40),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
                                          child: Container(
                                            height: 160,
                                            width: double.infinity,
                                            margin: const EdgeInsets.only(
                                              left: 50,
                                              right: 40,
                                            ),
                                            decoration: ShapeDecoration(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(40),
                                                  bottomLeft:
                                                      Radius.circular(40),
                                                  topRight: Radius.circular(10),
                                                  bottomRight:
                                                      Radius.circular(10),
                                                ),
                                              ),
                                              shadows: [
                                                BoxShadow(
                                                  color: AppColor.placeholder
                                                      .withOpacity(0.3),
                                                  offset: const Offset(0, 5),
                                                  blurRadius: 5,
                                                ),
                                              ],
                                              color: Colors.white,
                                            ),
                                            child: Column(
                                              children: [
                                                const Text(
                                                  "Total Price",
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text(
                                                  "LKR 1500",
                                                  style: TextStyle(
                                                    color: AppColor.primary,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                SizedBox(
                                                    width: 200,
                                                    child: ElevatedButton(
                                                        onPressed: () {},
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Image.asset(
                                                              helper.getAssetName(
                                                                  "add_to_cart.png",
                                                                  "virtual"),
                                                            ),
                                                            const Text(
                                                              "Add to Cart",
                                                            )
                                                          ],
                                                        ))),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(bottom: 0, left: 0, child: CustomBar()),
        ],
      ),
    );
  }
}
