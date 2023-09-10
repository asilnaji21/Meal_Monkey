import 'package:flutter/material.dart';

import '../const/color.dart';

class BurgerCard extends StatelessWidget {
  final String name;
  final String price;
  final bool isLast = false;
  BurgerCard({isLast, required this.name, required this.price});
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
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "${name} x1",
              style: const TextStyle(
                color: AppColor.primary,
                fontSize: 16,
              ),
            ),
          ),
          Text(
            "\$$price",
            style: const TextStyle(
              color: AppColor.primary,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          )
        ],
      ),
    );
  }
}
