import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/checkOtScreen.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/custom_Burgercard.dart';
import '../Widget/custom_nav_bar.dart';

class MyOrder extends StatelessWidget {
  static const routename = "/myorder";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "My Order",
                          style: helper.getTheme(context).headline5,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: SizedBox(
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              height: 80,
                              width: 80,
                              child: Image.asset(
                                helper.getAssetName("hamburger.jpg", "real"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "King Burgers",
                                style: helper.getTheme(context).headline3,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    helper.getAssetName(
                                      "star_filled.png",
                                      "virtual",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "4.9",
                                    style: TextStyle(
                                      color: AppColor.orange,
                                    ),
                                  ),
                                  const Text(" (124 ratings)"),
                                ],
                              ),
                              Row(
                                children: const [
                                  Text("Burger"),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5,
                                    ),
                                    child: Text(
                                      ".",
                                      style: TextStyle(
                                        color: AppColor.orange,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text("Western Food"),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 15,
                                    child: Image.asset(
                                      helper.getAssetName(
                                        "loc.png",
                                        "virtual",
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text("No 03, 4th Lane, Newyork")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    color: AppColor.placeholderBg,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          BurgerCard(
                            price: "16",
                            name: "Beef Burger",
                          ),
                          BurgerCard(
                            price: "14",
                            name: "Classic Burger",
                          ),
                          BurgerCard(
                            price: "17",
                            name: "Cheese Chicken Burger",
                          ),
                          BurgerCard(
                            price: "15",
                            name: "Chicken Legs Basket",
                          ),
                          BurgerCard(
                            price: "6",
                            name: "French Fries Large",
                            isLast: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: AppColor.placeholder.withOpacity(0.25),
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Delivery Instruction",
                                  style: helper.getTheme(context).headline3,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.add,
                                        color: AppColor.orange,
                                      ),
                                      Text(
                                        "Add Notes",
                                        style: TextStyle(
                                          color: AppColor.orange,
                                        ),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Sub Total",
                                style: helper.getTheme(context).headline3,
                              ),
                            ),
                            Text(
                              "\$68",
                              style:
                                  helper.getTheme(context).headline3!.copyWith(
                                        color: AppColor.orange,
                                      ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Delivery Cost",
                                style: helper.getTheme(context).headline3,
                              ),
                            ),
                            Text(
                              "\$2",
                              style:
                                  helper.getTheme(context).headline3!.copyWith(
                                        color: AppColor.orange,
                                      ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: AppColor.placeholder.withOpacity(0.25),
                          thickness: 1.5,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Total",
                                style: helper.getTheme(context).headline3,
                              ),
                            ),
                            Text(
                              "\$70",
                              style:
                                  helper.getTheme(context).headline3!.copyWith(
                                        color: AppColor.orange,
                                        fontSize: 22,
                                      ),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(CheckOutScreen.routeName);
                            },
                            child: const Text("Checkout"),
                          ),
                        ),
                        const SizedBox(
                          height: 120,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomBar(),
          ),
        ],
      ),
    );
  }
}
