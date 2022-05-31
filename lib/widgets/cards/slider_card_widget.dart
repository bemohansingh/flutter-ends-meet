import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderCardWidget extends StatelessWidget {
  SliderCardWidget({this.image, this.title});
  final Image? image;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.5.w, vertical: 2.5.h),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: AppColor.whiteColor,
            spreadRadius: 8,
            blurRadius: 7,
            offset: Offset(1, 1))
      ], border: Border.all(color: Colors.grey, width: 1.w)),
      height: 135.h,
      width: 108.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 18.h),
            height: 75.h,
            width: 71.w,
            child: Image.asset("image"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
            child: Text(
              "Console",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
