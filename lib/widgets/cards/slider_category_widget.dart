import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderCategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h, left: 5.w),
      height: 26.h,
      width: 147.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.w),
        boxShadow: [
          BoxShadow(
              color: AppColor.whiteColor,
              spreadRadius: 8,
              blurRadius: 7,
              offset: Offset(2, 2))
        ],
      ),
      child: Container(
        padding: EdgeInsets.only(top: 3.h, bottom: 4.h),
        child: Text(
          "X Box",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
