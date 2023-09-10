// ignore: file_names
import 'package:flutter/material.dart';

import '../const/color.dart';

class CustomOtp extends StatelessWidget {
  const CustomOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: ShapeDecoration(
        color: AppColor.placeholderBg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 18, left: 20),
            child: Text(
              "*",
              style: TextStyle(fontSize: 20),
            ),
          ),
          TextField(
            decoration: InputDecoration(border: InputBorder.none),
          ),
        ],
      ),
    );
  }
}
