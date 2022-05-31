import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SlideDots extends StatefulWidget {
  bool isActive;
  SlideDots({required this.isActive});

  @override
  _SlideDotsState createState() => _SlideDotsState();
}

class _SlideDotsState extends State<SlideDots> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 10.0.w),
      height: widget.isActive ? 10.h : 6.w,
      width: widget.isActive ? 10.h : 6.w,
      decoration: BoxDecoration(
        color: widget.isActive? AppColor.blueButtonColor:AppColor.greyColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0),),
      ),
    );
  }
}
