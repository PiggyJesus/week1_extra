import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dinner extends StatefulWidget {
  const Dinner({Key? key}) : super(key: key);

  @override
  State<Dinner> createState() => _DinnerState();
}

class _DinnerState extends State<Dinner> {
  final w = 298.w;
  final h = 65.h;
  var isFull = false;

  final maxW = ScreenUtil().screenWidth;
  final maxH = ScreenUtil().screenHeight;
  // final maxW = 400.w;
  // final maxH = 400.h;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 3),
      width: isFull ? maxW : w,
      height: isFull ? maxH : h,
      transform: isFull ? Matrix4.rotationZ(0) :
        Matrix4.rotationZ(-3.14 / 7),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          textStyle: TextStyle(
            color: Colors.black,
          ),
          minimumSize: Size(maxW, maxH)
        ),
        onPressed: () {
          setState(() {
            isFull = !isFull;
          });
        },
        child: isFull ? const Placeholder() :
          Row(
          children: [
            Text("123")
          ],
        )
      ),
    );
  }
}
