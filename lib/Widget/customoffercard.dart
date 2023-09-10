import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';

import '../const/color.dart';

class OfferCard extends StatelessWidget {
  final String name;
  final Image image;
  OfferCard({required this.image, required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 200, width: double.infinity, child: image),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  name,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Image.asset(
                  helper.getAssetName("star_filled.png", "virtual"),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "4.9",
                  style: TextStyle(
                    color: AppColor.orange,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text("(124 ratings) Cafe"),
                const SizedBox(
                  width: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    ".",
                    style: TextStyle(
                        color: AppColor.orange, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(" Western Food"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
