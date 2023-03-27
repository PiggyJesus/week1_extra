import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:week1_extra/App/MainPage/Dinner.dart';
import 'package:week1_extra/App/MainPage/Profile.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Stack(
        children: [
          Center(
            child: Dinner(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100.w, top: 50.h),
            child: Profile(),
          )
        ],
      ),
    );
  }
}
