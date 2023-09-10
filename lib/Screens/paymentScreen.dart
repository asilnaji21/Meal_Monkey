import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/custom_text_input_field.dart';

class PaymentScreen extends StatelessWidget {
  static const routename = '/paymentscreen';
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Payment Details",
                        style: helper.getTheme(context).headline5,
                      ),
                    ),
                    Image.asset("assets/images/virtual/cart.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Customize your payment method",
                      style: helper.getTheme(context).headline3,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: AppColor.placeholder,
                  thickness: 1.5,
                  height: 30,
                ),
              ),
              Container(
                height: 170,
                width: helper.getScreenWidth(context),
                decoration: BoxDecoration(
                  color: AppColor.placeholderBg,
                  boxShadow: [
                    BoxShadow(
                      color: AppColor.placeholder.withOpacity(0.5),
                      offset: const Offset(0, 20),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Cash/Card on delivery",
                        style: TextStyle(
                            color: AppColor.primary,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.check,
                        color: AppColor.orange,
                      ),
                    ],
                  ),
                  const Divider(
                    color: AppColor.placeholder,
                    thickness: 1,
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 40,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Image.asset("assets/images/real/visa.png"),
                          )),
                      const Text("**** ****"),
                      const Text("2187"),
                      OutlinedButton(
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              const BorderSide(
                                color: AppColor.orange,
                              ),
                            ),
                            shape: MaterialStateProperty.all(
                              const StadiumBorder(),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all(AppColor.orange)),
                        onPressed: () {},
                        child: const Text("Delete Card"),
                      ),
                    ],
                  ),
                  const Divider(
                    color: AppColor.placeholder,
                    thickness: 1,
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          "Other Methods",
                          style: TextStyle(
                              color: AppColor.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(AppColor.orange)),
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
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: const Icon(Icons.clear))
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
                                  color:
                                      AppColor.placeholderBg.withOpacity(0.5),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child:
                                      cutomtextinput(hinttexttt: "Card Number"),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: cutomtextinput(
                                      hinttexttt: "Security Code"),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child:
                                      cutomtextinput(hinttexttt: "First Name"),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child:
                                      cutomtextinput(hinttexttt: "Last Name"),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const Text("You can remove this card"),
                                    Switch(
                                        value: false,
                                        onChanged: (_) {},
                                        thumbColor: MaterialStateProperty.all(
                                          AppColor.secondary,
                                        )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: SizedBox(
                                    height: 50,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.add,
                                            ),
                                            SizedBox(width: 33),
                                            Text("Add Card"),
                                            SizedBox(width: 33),
                                          ],
                                        )),
                                  ),
                                )
                              ]),
                            ),
                          );
                        });
                  },
                  child: Row(children: const [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Add Another Credit / Debit Card",
                      style: TextStyle(color: Colors.white),
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
