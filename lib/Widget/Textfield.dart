// ignore: file_names
import 'package:flutter/material.dart';

import '../const/color.dart';

import 'package:monkey_meal/Utils/helper.dart';

class CustomTextField extends StatelessWidget {
  final String labelTextt1;
  final String value;
  // ignore: non_constant_identifier_names
  final bool Ispassword;
  // ignore: use_key_in_widget_constructors
  const CustomTextField(
      {required this.value,
      required this.labelTextt1,
      // ignore: non_constant_identifier_names
      required this.Ispassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: const ShapeDecoration(
            shape: StadiumBorder(), color: AppColor.placeholderBg),
        child: TextFormField(
          obscureText: Ispassword,
          initialValue: value,
          decoration: InputDecoration(
              border: InputBorder.none,
              label: Align(
                  alignment: Alignment.centerLeft, child: Text(labelTextt1)),
              // hintText: hinttextt1,

              hintStyle: helper.getTheme(context).headline4,
              contentPadding: const EdgeInsets.symmetric(horizontal: 20)),
        ),
      ),
    );
  }
}
