import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/logoscreen.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/customPaymentCard .dart';
import '../Widget/custom_nav_bar.dart';
import '../Widget/custom_text_input_field.dart';

class ThanksScreen extends StatelessWidget {
  static const routeName = "/ThanksScreen";
  const ThanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                          "Checkout",
                          style: helper.getTheme(context).headline5,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Delivery Address"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: helper.getScreenWidth(context) * 0.4,
                          child: const Text(
                            "653 Nostrand Ave., Brooklyn, NY 11216",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Change",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.orange),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 10,
                    width: double.infinity,
                    color: AppColor.placeholderBg,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment method",
                          style: helper.getTheme(context).headline4,
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
                                  "Add Card",
                                  style: TextStyle(
                                      color: AppColor.orange,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  PaymentCard(
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Cash on Delivery"),
                        Container(
                          width: 20,
                          height: 15,
                          decoration: const ShapeDecoration(
                              shape: CircleBorder(
                                  side: BorderSide(color: AppColor.orange))),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PaymentCard(
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/real/visa2.png"),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text("**** **** **** 2187"),
                        Container(
                            width: 15,
                            height: 15,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(
                              side: BorderSide(color: AppColor.orange),
                            ))),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PaymentCard(
                      widget: Row(
                    children: [
                      Image.asset("assets/images/real/paypal.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text("johndoe@email.com"),
                    ],
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 10,
                    width: double.infinity,
                    color: AppColor.placeholderBg,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Sub Total"),
                            Text(
                              "\$68",
                              style: helper.getTheme(context).headline3,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Delivery Cost"),
                            Text(
                              "\$2",
                              style: helper.getTheme(context).headline3,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Discount"),
                            Text(
                              "-\$4",
                              style: helper.getTheme(context).headline3,
                            ),
                          ],
                        ),
                        Divider(
                          height: 40,
                          color: AppColor.placeholder.withOpacity(0.25),
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Total"),
                            Text(
                              "\$66",
                              style: helper.getTheme(context).headline3,
                            )
                          ],
                        ),
                        Container(
                          height: 10,
                          width: double.infinity,
                          color: AppColor.placeholderBg,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      context: context,
                                      builder: (context) {
                                        return Container(
                                          height:
                                              helper.getScreenHeight(context) *
                                                  20,
                                          child: SingleChildScrollView(
                                            child: Column(children: [
                                              Row(
                                                children: [
                                                  IconButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    icon:
                                                        const Icon(Icons.clear),
                                                  ),
                                                ],
                                              ),
                                              Image.asset(
                                                  "assets/images/virtual/vector4.png"),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Text(
                                                "Thank You!",
                                                style: TextStyle(
                                                  color: AppColor.primary,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 22,
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "for your order",
                                                style: helper
                                                    .getTheme(context)
                                                    .headline4!
                                                    .copyWith(
                                                        color:
                                                            AppColor.primary),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20.0),
                                                child: Text(
                                                    "Your order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your order"),
                                              ),
                                              const SizedBox(
                                                height: 60,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 20,
                                                ),
                                                child: SizedBox(
                                                  height: 50,
                                                  width: double.infinity,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    child: const Text(
                                                        "Track My Order"),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed(
                                                          LogoScreen.routename);
                                                },
                                                child: const Text(
                                                  "Back To Home",
                                                  style: TextStyle(
                                                    color: AppColor.primary,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 50,
                                              )
                                            ]),
                                          ),
                                        );
                                      });
                                },
                                child: const Text("Send Order")),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const Positioned(left: 0, bottom: 0, child: CustomBar()),
        ],
      ),
    );
  }
}
