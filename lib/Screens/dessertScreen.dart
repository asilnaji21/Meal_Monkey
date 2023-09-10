// ignore: file_names
import 'package:flutter/material.dart';
import 'package:monkey_meal/const/color.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../Widget/custom_image_column.dart';
import '../Widget/custom_nav_bar.dart';

class Dessert extends StatelessWidget {
  static const routename = "/dessrt";
  const Dessert({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.arrow_back),
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "Desserts",
                              style: helper.getTheme(context).headline5,
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/images/virtual/cart.png"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const ShapeDecoration(
                        shape: StadiumBorder(), color: AppColor.placeholderBg),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search Food",
                            icon: Icon(Icons.search),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomImage(
                  image: Image.asset(
                    'assets/images/real/apple_pie.jpg',
                    fit: BoxFit.cover,
                  ),
                  textt1: "French Apple Pie",
                  Textt2: "Minute by tuk tuk    Desserts",
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomImage(
                  image: Image.asset(
                    'assets/images/real/dessert2.jpg',
                    fit: BoxFit.cover,
                  ),
                  textt1: "Dark Chocolate Cake",
                  Textt2: "Cakes by Tella    Desserts",
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomImage(
                  image: Image.asset(
                    'assets/images/real/dessert4.jpg',
                    fit: BoxFit.cover,
                  ),
                  textt1: "Street Shake",
                  Textt2: "Café Racer    Desserts",
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomImage(
                  image: Image.asset(
                    'assets/images/real/dessert5.jpg',
                    fit: BoxFit.cover,
                  ),
                  textt1: "Fudgy Chewy Brownies",
                  Textt2: "Minute by tuk tuk    Desserts",
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Positioned(left: 0, bottom: 0, child: CustomBar()),
        ],
      )),
    );
  }
}
