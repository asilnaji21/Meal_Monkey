import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../const/color.dart';

class CustomimageRow extends StatelessWidget {
  final Image image;
  final String textt;

  // ignore: use_key_in_widget_constructors
  const CustomimageRow({required this.image, required this.textt});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: SizedBox(
          width: 100,
          height: 100,
          // decoration: ShapeDecoration(
          //   color: AppColor.placeholderBg,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(13)),
          // ),
          child: image,
        ),
      ),
      const SizedBox(
        height: 3,
      ),
      Text(textt,
          style: helper
              .getTheme(context)
              .headline4
              ?.copyWith(color: AppColor.secondary))
    ]);
  }
}
