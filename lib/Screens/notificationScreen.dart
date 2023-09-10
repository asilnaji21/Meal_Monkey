import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/custom_notifi_card.dart';

class Notifaction extends StatelessWidget {
  static const routename = '/notification';
  const Notifaction({Key? key}) : super(key: key);

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
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                      Expanded(
                        child: Text(
                          "Notifications",
                          style: helper.getTheme(context).headline5,
                        ),
                      ),
                      Image.asset("assets/images/virtual/cart.png")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                NotifiCard(
                  title: "Your order has been picked up",
                  time: "Now",
                ),
                NotifiCard(
                  title: "Your order has been delivered",
                  time: "1 h ago",
                  color: AppColor.placeholderBg,
                ),
                NotifiCard(
                  title: "Lorem ipsum dolor sit amet, consectetur",
                  time: "3 h ago",
                ),
                NotifiCard(
                  title: "Lorem ipsum dolor sit amet, consectetur",
                  time: "5 h ago",
                ),
                NotifiCard(
                  title: "Lorem ipsum dolor sit amet, consectetur",
                  time: "05 Sep 2020",
                  color: AppColor.placeholderBg,
                ),
                NotifiCard(
                  title: "Lorem ipsum dolor sit amet, consectetur",
                  time: "12 Aug 2020",
                  color: AppColor.placeholderBg,
                ),
                NotifiCard(
                  title: "Lorem ipsum dolor sit amet, consectetur",
                  time: "20 Jul 2020",
                ),
                NotifiCard(
                  title: "Lorem ipsum dolor sit amet, consectetur",
                  time: "12 Jul 2020",
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
