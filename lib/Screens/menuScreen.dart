import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/dessertScreen.dart';
import 'package:monkey_meal/const/color.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../Widget/custom_search_bar.dart';
import '../Widget/custom_nav_bar.dart';
import '../Widget/custom_menu_card.dart';

class Menu extends StatelessWidget {
  static const routename = '/menu';
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: helper.getTheme(context).headline6,
                  ),
                  Image.asset("assets/images/virtual/cart.png")
                ],
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            // طريقة اخرى لعمل ال ******Sreach Bar***
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Container(
            //     width: double.infinity,
            //     height: 44,
            //     decoration: const ShapeDecoration(
            //         shape: StadiumBorder(), color: AppColor.placeholderBg),
            //     child: const TextField(
            //       decoration: InputDecoration(
            //           icon: Icon(Icons.search),
            //           hintText: "Serach Food",
            //           // hintStyle:helper.getTheme(context).headline6,
            //           border: InputBorder.none,
            //           contentPadding: EdgeInsets.symmetric(horizontal: 30)),
            //     ),
            //   ),
            // )

            const CustomSearch(),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: helper.getScreenHeight(context) * 0.6,
              width: helper.getScreenWidth(context),
              child: Stack(
                children: [
                  Container(
                    width: 100,
                    height: double.infinity,
                    decoration: const ShapeDecoration(
                        color: AppColor.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(20),
                        ))),
                  ),
                  //عدلي هان
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        CustomMenuCard(
                          image: Image.asset(
                            "assets/images/real/coffee2.jpg",
                            fit: BoxFit.cover,
                          ),
                          textt1: "Food",
                          textt2: "120 items",
                        ),
                        CustomMenuCard(
                          image: Image.asset(
                            "assets/images/real/breakfast.jpg",
                            fit: BoxFit.cover,
                          ),
                          textt1: "Beverages",
                          textt2: "220 items",
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed(Dessert.routename);
                          },
                          child: CustomMenuCard(
                            image: Image.asset(
                              "assets/images/real/dessert3.jpg",
                              fit: BoxFit.cover,
                            ),
                            textt1: "Desserts",
                            textt2: "340 items",
                          ),
                        ),
                        CustomMenuCard(
                          image: Image.asset(
                            "assets/images/real/hamburger3.jpg",
                            fit: BoxFit.cover,
                          ),
                          textt1: "Promotions",
                          textt2: "25 items",
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )),
        const Positioned(bottom: 0, left: 0, child: CustomBar()),
      ],
    ));
  }
}
