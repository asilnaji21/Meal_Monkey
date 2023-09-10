import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/aboutScreen.dart';
import 'package:monkey_meal/Screens/inboxScreen.dart';
import 'package:monkey_meal/Screens/myOrderScreen.dart';
import 'package:monkey_meal/Screens/notificationScreen.dart';
import 'package:monkey_meal/Screens/paymentScreen.dart';

import '../Widget/custom_more_card.dart';
import '../Widget/custom_nav_bar.dart';
import 'package:monkey_meal/Utils/helper.dart';

class More extends StatelessWidget {
  static const routename = '/more';
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
          width: helper.getScreenWidth(context),
          height: helper.getScreenHeight(context),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("More",
                              style: helper.getTheme(context).headline5),
                          Image.asset("assets/images/virtual/cart.png"),
                        ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MoreCard(
                    handler: () {
                      Navigator.of(context).pushNamed(PaymentScreen.routename);
                    },
                    image: Image.asset("assets/images/virtual/income.png"),
                    name: "Payment Details",
                    isNoti: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MoreCard(
                    handler: () {
                      Navigator.of(context).pushNamed(MyOrder.routename);
                    },
                    image:
                        Image.asset("assets/images/virtual/shopping_bag.png"),
                    name: "My Orders",
                    isNoti: false,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MoreCard(
                    handler: () {
                      Navigator.of(context).pushNamed(Notifaction.routename);
                    },
                    image: Image.asset("assets/images/virtual/noti.png"),
                    name: "Notifications",
                    isNoti: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MoreCard(
                    handler: () {
                      Navigator.of(context).pushNamed(InboxScreen.routename);
                    },
                    image: Image.asset("assets/images/virtual/mail.png"),
                    name: "Inbox",
                    isNoti: false,
                  ),
                  MoreCard(
                    handler: () {
                      Navigator.of(context).pushNamed(AboutScreen.routename);
                    },
                    image: Image.asset("assets/images/virtual/info.png"),
                    name: "About Us",
                    isNoti: false,
                  ),
                ],
              ),
            ),
          ),
        ),
        const Positioned(bottom: 0, child: CustomBar()),
      ],
    ));
  }
}
