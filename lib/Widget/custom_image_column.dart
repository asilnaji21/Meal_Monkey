import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final Image image;
  final String textt1;
  final String Textt2;
  // ignore: use_key_in_widget_constructors
  const CustomImage(
      // ignore: non_constant_identifier_names
      {required this.Textt2,
      required this.image,
      required this.textt1});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(width: double.infinity, height: 200, child: image),
        Positioned(
          bottom: 40,
          left: 4,
          child: Text(
            textt1,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Positioned(
            bottom: 19,
            left: 12,
            child: Image.asset("assets/images/virtual/star_filled.png")),
        Positioned(
          bottom: 17,
          left: 30,
          child: Text(
            Textt2,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
