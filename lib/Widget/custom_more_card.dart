import 'package:flutter/material.dart';

import '../const/color.dart';

class MoreCard extends StatelessWidget {
  final String name;
  final Image image;
  final bool isNoti;
  final Function handler;
  MoreCard(
      {required this.image,
      required this.handler,
      required this.isNoti,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        handler();
      },
      child: Container(
        height: 70,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              margin: const EdgeInsets.only(
                right: 20,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: AppColor.placeholderBg,
              ),
              child: Row(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: const ShapeDecoration(
                        shape: CircleBorder(),
                        color: AppColor.placeholder,
                      ),
                      child: image),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 30,
                width: 30,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: AppColor.placeholderBg,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColor.secondary,
                  size: 17,
                ),
              ),
            ),
            if (isNoti)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 20,
                  width: 20,
                  margin: const EdgeInsets.only(
                    right: 50,
                  ),
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      "15",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
