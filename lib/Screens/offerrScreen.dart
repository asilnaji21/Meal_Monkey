import 'package:flutter/material.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/const/color.dart';

import '../Widget/custom_nav_bar.dart';
import '../Widget/customoffercard.dart';

class Offer extends StatelessWidget {
  static const routename = '/offer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Container(
              height: helper.getScreenHeight(context),
              width: helper.getScreenWidth(context),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest Offers",
                            style: helper.getTheme(context).headline5,
                          ),
                          Image.asset(
                            helper.getAssetName("cart.png", "virtual"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: const [Text("Find discounts, Offer special")],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: helper.getScreenWidth(context) * 0.4,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text("Check Offers")),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    OfferCard(
                      image: Image.asset(
                        helper.getAssetName("breakfast.jpg", "real"),
                        fit: BoxFit.cover,
                      ),
                      name: "Cafe de Noires",
                    ),
                    OfferCard(
                      image: Image.asset(
                        helper.getAssetName("western2.jpg", "real"),
                        fit: BoxFit.cover,
                      ),
                      name: "Isso",
                    ),
                    OfferCard(
                      image: Image.asset(
                        helper.getAssetName("coffee3.jpg", "real"),
                        fit: BoxFit.cover,
                      ),
                      name: "Cafe Beans",
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            child: CustomBar(),
          )
        ],
      ),
    );
  }
}
