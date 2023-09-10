// ignore: file_names
import 'package:flutter/material.dart';
import 'package:monkey_meal/Screens/homeScreen.dart';
import 'package:monkey_meal/Utils/helper.dart';
import 'package:monkey_meal/model/intro_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/color.dart';
import '../model/intro_model.dart';

class FindFoodIntroo extends StatefulWidget {
  static const routename = "/findfoodintro";

  const FindFoodIntroo({Key? key}) : super(key: key);

  @override
  State<FindFoodIntroo> createState() => _FindFoodIntrooState();
}

class _FindFoodIntrooState extends State<FindFoodIntroo> {
  final List<Intromodel> _pages = Intromodel.pages;
  // ignore: prefer_typing_uninitialized_variables
  var _controller;

  late int count;

  @override
  void initState() {
    _controller = new PageController();
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.w, horizontal: 40.h),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300.h,
                child: PageView.builder(
                  controller: _controller,
                  onPageChanged: (value) {
                    setState(() {
                      count = value;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(_pages[index].image.toString());
                  },
                  itemCount: _pages.length,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 4,
                    backgroundColor:
                        count == 0 ? AppColor.orange : AppColor.placeholder,
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor:
                        count == 1 ? AppColor.orange : AppColor.placeholder,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor:
                        count == 2 ? AppColor.orange : AppColor.placeholder,
                  ),
                  SizedBox(
                    height: 60.h,
                  )
                ],
              ),
              Text(
                _pages[count].title.toString(),
                style: helper.getTheme(context).headline5,
              ),
              SizedBox(
                height: 33.h,
              ),
              Text(
                _pages[count].desc.toString(),
                style: const TextStyle(color: AppColor.secondary),
              ),
              const Spacer(),
              SizedBox(
                  height: 53.h,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routename);
                      },
                      child: const Text("Next")))
            ],
          ),
        ),
      ),
    );
  }
}
