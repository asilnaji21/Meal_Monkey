import 'package:flutter/material.dart';

import '../const/color.dart';

class NotifiCard extends StatelessWidget {
  final String time;
  final String title;
  Color color = Colors.white;

  NotifiCard({
    required this.time,
    required this.title,
    color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.placeholderBg,
        border: Border(
          bottom: BorderSide(
            color: color,
            width: 0.5,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: AppColor.orange,
            radius: 5,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppColor.primary,
                ),
              ),
              Text(time)
            ],
          )
        ],
      ),
    );
  }
}
