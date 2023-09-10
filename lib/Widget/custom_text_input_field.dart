// ignore: camel_case_types
import 'package:flutter/material.dart';

import '../const/color.dart';

class cutomtextinput extends StatelessWidget {
  final String? Function(String?)? validator1;
  //void Function(String?)? onSaved1;
  TextEditingController? controller1;
  void Function()? onEditingComplete1;
  void Function(String)? onChanged1;
  final String hinttexttt;

  // ignore: use_key_in_widget_constructors
  cutomtextinput({
    required this.hinttexttt,
    this.validator1,
    //this.onSaved1,
    this.controller1,
    this.onEditingComplete1,
    this.onChanged1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: const ShapeDecoration(
          shape: StadiumBorder(), color: AppColor.placeholderBg),
      child: TextFormField(
        controller: controller1,
        validator: validator1,
        //onSaved: onSaved1,
        // onChanged: onChanged1,
        // onEditingComplete: onEditingComplete1,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttexttt,
            //  fillColor: AppColor.placeholderBg,
            contentPadding: const EdgeInsets.only(left: 34)),
      ),
    );
  }
}
