import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/custom_inbox_card.dart';

class InboxScreen extends StatelessWidget {
  static const routename = "/index";
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SafeArea(
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
                      icon: const Icon(Icons.arrow_back_ios_rounded),
                    ),
                    Expanded(
                      child: Text(
                        "Inbox",
                        style: helper.getTheme(context).headline5,
                      ),
                    ),
                    Image.asset("assets/images/virtual/cart.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InboxCard(
                  title: "MealMonkey Promotions",
                  descripton:
                      "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
                  time: "6th July",
                  color: AppColor.placeholderBg),
              InboxCard(
                title: "MealMonkey Promotions",
                descripton:
                    "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
                time: "6th July",
              ),
              InboxCard(
                title: "MealMonkey Promotions",
                descripton:
                    "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
                time: "6th July",
              ),
              InboxCard(
                title: "MealMonkey Promotions",
                descripton:
                    "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
                time: "6th July",
              ),
              InboxCard(
                title: "MealMonkey Promotions",
                descripton:
                    "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
                time: "6th July",
              ),
              InboxCard(
                title: "MealMonkey Promotions",
                descripton:
                    "Lorem Ipsum dolor sit amet,consectetur adipiscing elit, sed do eiusmod tempor ",
                time: "6th July",
              ),
            ],
          ),
        )
      ],
    ));
  }
}
