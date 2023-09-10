import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/viewfooddetails.dart';
import 'package:monkey_meal/const/color.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../Widget/custom_image_row.dart';
import '../Widget/custom_search_bar.dart';
import '../Widget/custom_nav_bar.dart';
import '../Widget/customhomeimagecolumn.dart';

class HomeScreen extends StatefulWidget {
  static const routename = '/homescreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: prefer_typing_uninitialized_variables
  var location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Good morning Akila!",
                        style: helper.getTheme(context).headline5,
                      ),
                      Image.asset("assets/images/virtual/cart.png")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 2,
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Deilivering to",
                      )),
                ),
                //هذه طريقة اخرى لعمل ال *** DropDawnButton ***
                // Container(
                //   child: DropdownButtonHideUnderline(
                //     child: DropdownButton(
                //       value: "current location",
                //       items: const [
                //         DropdownMenuItem(
                //           value: "current location",
                //           child: Text("Current Location"),
                //         )
                //       ],
                //       onChanged: (String? value) {},
                //       icon:
                //           Image.asset("assets/images/virtual/dropdown_filled.png"),
                //     ),
                //   ),
                // )

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: 300,
                    child: DropdownButton(
                      value: location,
                      hint: const Text("Current Location"),
                      items: ['Gaza', 'Rafah', 'BetLahem', "Lobnan"]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text("$e"),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(
                          () {
                            location = value;
                          },
                        );
                      },
                      style: helper.getTheme(context).headline4,
                    ),
                  ),
                ),
                const CustomSearch(),
                const SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    // color: Colors.amber,
                    width: double.infinity,
                    height: 150,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CustomimageRow(
                            image: Image.asset(
                              "assets/images/real/rice.jpg",
                              fit: BoxFit.cover,
                            ),
                            textt: "offer",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomimageRow(
                            image: Image.asset(
                              "assets/images/real/hamburger2.jpg",
                              fit: BoxFit.cover,
                            ),
                            textt: "Sri Lankan",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomimageRow(
                            image: Image.asset(
                              "assets/images/real/pizza4.jpg",
                              fit: BoxFit.cover,
                            ),
                            textt: "Pizza",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomimageRow(
                            image: Image.asset(
                              "assets/images/real/dessert3.jpg",
                              fit: BoxFit.cover,
                            ),
                            textt: "Sri Lankan",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomimageRow(
                            image: Image.asset(
                              "assets/images/real/pizza4.jpg",
                              fit: BoxFit.cover,
                            ),
                            textt: "Pizaa",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomimageRow(
                            image: Image.asset(
                              "assets/images/real/rice.jpg",
                              fit: BoxFit.cover,
                            ),
                            textt: "rice",
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CustomimageRow(
                            image: Image.asset(
                              "assets/images/real/rice.jpg",
                              fit: BoxFit.cover,
                            ),
                            textt: "Sri Lankan",
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Popular Restaurents",
                        style: helper.getTheme(context).headline4,
                      ),
                    ),
                    const SizedBox(
                      width: 99,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View All",
                          style: TextStyle(
                              color: AppColor.orange,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomImageColumn(
                  image: Image.asset(
                    "assets/images/real/pizza2.jpg",
                    fit: BoxFit.cover,
                  ),
                  textt: "Minute by tuk tuk",
                ),
                CustomImageColumn(
                  image: Image.asset(
                    "assets/images/real/breakfast.jpg",
                    fit: BoxFit.cover,
                  ),
                  textt: "Café de Noir",
                ),
                CustomImageColumn(
                  image: Image.asset(
                    "assets/images/real/fruit.jpg",
                    fit: BoxFit.cover,
                  ),
                  textt: "Bakes by Tella",
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                        // color: Colors.amber,
                        width: double.infinity,
                        height: 150,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CustomimageRow(
                                image: Image.asset(
                                  "assets/images/real/pizza4.jpg",
                                  fit: BoxFit.cover,
                                ),
                                textt: "Café De Bambaa",
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomimageRow(
                                image: Image.asset(
                                  "assets/images/real/hamburger3.jpg",
                                  fit: BoxFit.cover,
                                ),
                                textt: "Burger by Bella",
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomimageRow(
                                image: Image.asset(
                                  "assets/images/real/pizza2.jpg",
                                  fit: BoxFit.cover,
                                ),
                                textt: "Pizaa",
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomimageRow(
                                image: Image.asset(
                                  "assets/images/real/pizza4.jpg",
                                  fit: BoxFit.cover,
                                ),
                                textt: "Pizaa",
                              ),
                            ],
                          ),
                        ))),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Recent Items",
                        style: helper.getTheme(context).headline6,
                      ),
                    ),
                    const SizedBox(
                      width: 99,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "View All",
                          style: TextStyle(
                              color: AppColor.orange,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),

                //*********************************************************************** */
                const SizedBox(
                  height: 7,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 188),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Container(
                        color: Colors.amber,
                        width: double.infinity,
                        height: 120,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed(ViewDetails.routename);
                          },
                          child: Image.asset(
                            "assets/images/real/pizza3.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                /////********************************************************** *//////////////////
              ],
            ),
          ),
        ),
        const Positioned(bottom: 0, left: 0, child: CustomBar()),
      ],
    ));
  }
}
