import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/customPaymentCard .dart';
import '../Widget/custom_nav_bar.dart';
import '../Widget/custom_text_input_field.dart';

class CheckOutScreen extends StatelessWidget {
  static const routeName = "/checkoutScreen";
  const CheckOutScreen({Key? key}) : super(key: key);

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
                                      isDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return SingleChildScrollView(
                                          child: Container(
                                            child: Column(children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      icon: const Icon(
                                                          Icons.clear))
                                                ],
                                              ),
                                              Row(
                                                children: const [
                                                  Text(
                                                    " Add Credit/Debit Card",
                                                    // style: helper.getTheme(context).headline4,
                                                  )
                                                ],
                                              ),
                                              Divider(
                                                thickness: 2,
                                                color: AppColor.placeholderBg
                                                    .withOpacity(0.5),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: cutomtextinput(
                                                    hinttexttt: "Card Number"),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text("Expiry"),
                                                    SizedBox(
                                                      height: 50,
                                                      width: 100,
                                                      child: cutomtextinput(
                                                        hinttexttt: "MM",
                                                        // padding: const EdgeInsets.only(
                                                        //     left: 35),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 50,
                                                      width: 100,
                                                      child: cutomtextinput(
                                                        hinttexttt: "YY",
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: cutomtextinput(
                                                    hinttexttt:
                                                        "Security Code"),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: cutomtextinput(
                                                    hinttexttt: "First Name"),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20.0),
                                                child: cutomtextinput(
                                                    hinttexttt: "Last Name"),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                      "You can remove this card"),
                                                  Switch(
                                                      value: false,
                                                      onChanged: (_) {},
                                                      thumbColor:
                                                          MaterialStateProperty
                                                              .all(
                                                        AppColor.secondary,
                                                      )),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                child: SizedBox(
                                                  height: 50,
                                                  child: ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Icon(
                                                            Icons.add,
                                                          ),
                                                          SizedBox(width: 20),
                                                          Text("Add Card"),
                                                          SizedBox(height: 33),
                                                        ],
                                                      )),
                                                ),
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
