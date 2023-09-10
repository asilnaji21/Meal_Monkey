import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../const/color.dart';

class CustomImageColumn extends StatelessWidget {
  final Image image;
  final String textt;
  // ignore: use_key_in_widget_constructors
  const CustomImageColumn({required this.image, required this.textt});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: image,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: SizedBox(
              width: double.infinity,
              child: Text(
                textt,
                style: helper.getTheme(context).headline3,
              )),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.star,
                color: AppColor.orange,
              ),
            ),
            Text("4.9", style: TextStyle(color: AppColor.orange)),
            Text("(124 ratings) Café     Western Food")
          ],
        ),
      ],
    );
  }
}
