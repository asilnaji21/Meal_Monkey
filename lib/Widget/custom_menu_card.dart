import 'package:flutter/material.dart';

import '../const/color.dart';
import 'package:monkey_meal/Utils/helper.dart';

class CustomMenuCard extends StatelessWidget {
  final Image image;
  final String textt1;
  final String textt2;
  // ignore: use_key_in_widget_constructors
  const CustomMenuCard(
      {required this.image, required this.textt1, required this.textt2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 70,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(54),
                bottomLeft: Radius.circular(54),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: AppColor.placeholder,
                  offset: Offset(0, 2),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textt1,
                  style: helper.getTheme(context).headline6,
                ),
                Text(textt2)
              ],
            )),
        SizedBox(
          height: 70,
          child: Align(
            alignment: Alignment.centerLeft,
            child: ClipOval(
              child: SizedBox(width: 60, height: 60, child: image),
            ),
          ),
        ),
        SizedBox(
          height: 80,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
                width: 40,
                height: 40,
                decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                          color: AppColor.placeholder,
                          offset: Offset(0, 2),
                          blurRadius: 5),
                    ]),
                child: Image.asset(
                  "assets/images/virtual/next_filled.png",
                )),
          ),
        )
      ],
    );
  }
}
