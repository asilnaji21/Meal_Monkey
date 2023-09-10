import 'package:flutter/material.dart';

import '../const/color.dart';

class DropDown extends StatelessWidget {
  const DropDown({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 30, right: 10),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          color: AppColor.placeholderBg,
        ),
        child: DropdownButtonHideUnderline(
            child: DropdownButton(
          hint: Row(
            children: const [
              Text("-Select the size of portion-"),
            ],
          ),
          value: "default",
          onChanged: (_) {},
          items: const [
            DropdownMenuItem(
              value: "default",
              child: Text("-Select the size of portion-"),
            ),
          ],
        )),
      ),
    );
  }
}
