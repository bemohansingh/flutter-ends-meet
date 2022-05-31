import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvailableBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
    return Container(
      height: 110.h,
      width: 165.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Box",
                  style: textStyle.copyWith(color: Colors.black),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 6.0.h,
                  bottom: 6.0.h,
                  left: 8.0.w,
                ),
                child: Text(
                  "Available",
                  style: textStyle.copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
          Container(
            height: 22.h,
            width: 36.w,
            margin: EdgeInsets.only(top: 6.h),
            padding: EdgeInsets.only(top: 2.h),
            color: Colors.grey.shade800,
            child: Text(
              "No",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
