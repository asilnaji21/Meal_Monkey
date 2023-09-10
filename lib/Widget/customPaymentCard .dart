import 'package:flutter/material.dart';

import '../const/color.dart';

class PaymentCard extends StatelessWidget {
  final Widget widget;

  // ignore: avoid_types_as_parameter_names
  PaymentCard({required this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.only(
            left: 30,
            right: 20,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                color: AppColor.placeholder.withOpacity(0.25),
              ),
            ),
            color: AppColor.placeholderBg,
          ),
          child: widget,
        ));
  }
}
