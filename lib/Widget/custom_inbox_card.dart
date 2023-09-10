import 'package:flutter/material.dart';

import '../const/color.dart';

class InboxCard extends StatelessWidget {
  final Color color = Colors.white;
  final String time;
  final String title;
  final String descripton;
  InboxCard(
      {required this.time,
      required this.title,
      required this.descripton,
      color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        border: const Border(
          bottom: BorderSide(
            color: AppColor.placeholder,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              backgroundColor: AppColor.orange,
              radius: 5,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColor.primary,
                  ),
                ),
                const SizedBox(height: 5),
                Text(descripton),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
              Image.asset("assets/images/virtual/star.png")
            ],
          )
        ],
      ),
    );
  }
}
