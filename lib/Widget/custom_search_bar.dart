// ignore: file_names
import 'package:flutter/material.dart';

import '../const/color.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          color: AppColor.placeholderBg,
        ),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              // hintText: hinttexttt,
              // fillColor: AppColor.placeholderBg,
              contentPadding: const EdgeInsets.only(left: 34),
              hintText: "Search food",
              hintStyle:
                  const TextStyle(color: AppColor.secondary, fontSize: 16),
              icon: Image.asset("assets/images/virtual/search_filled.png")),
        ),
      ),
    );
  }
}
