import 'package:endsmeet/widgets/cards/box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GrideWigetDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
    return Container(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            height: 125.h,
            width: 166.w,
            child: Text("Image"),
            //  Image.asset(
            //   'assets/logo.png',
            //   fit: BoxFit.cover,
            // ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4.h, bottom: 4.h),
            margin: EdgeInsets.only(top: 6.h, bottom: 8.h),
            child: Text(
              "Test65",
              style: textStyle,
            ),
          ),
          Container(
            height: 22.h,
            width: 70.w,
            padding: EdgeInsets.only(top: 3.h),
            color: Colors.black,
            child: Text(
              "BHD 15",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
          BoxWidget()
        ],
      ),
    );
  }
}
