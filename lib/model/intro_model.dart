class Intromodel {
  final String? image;
  final String? title;
  final String? desc;

  Intromodel({this.image, this.title, this.desc});

  static List<Intromodel> pages = [
    Intromodel(
        image: "assets/images/virtual/vector1.png",
        title: "Find Food You Love",
        desc:
            "Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep"),
    Intromodel(
        image: "assets/images/virtual/vector2.png",
        title: "Fast Delivery",
        desc: "Fast food delivery to your home, office wherever you are"),
    Intromodel(
        image: "assets/images/virtual/vector3.png",
        title: "Live Tracking",
        desc:
            "Real time tracking of your food on the app once you placed the order")
  ];
}
