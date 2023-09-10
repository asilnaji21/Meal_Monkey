import 'package:flutter/material.dart';
import 'package:monkey_meal/const/color.dart';

class MealCardMyorder extends StatelessWidget {
  final String name;
  final String price;
  final bool isLast = false;
  MealCardMyorder({required this.name, required this.price, isLast});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border(
        bottom: isLast
            ? BorderSide.none
            : BorderSide(
                color: AppColor.placeholder.withOpacity(0.25),
              ),
      )),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "${name} x1",
              style: const TextStyle(color: AppColor.primary, fontSize: 16),
            ),
          ),
          Text(
            "\$$price",
            style: const TextStyle(
                color: AppColor.primary, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
