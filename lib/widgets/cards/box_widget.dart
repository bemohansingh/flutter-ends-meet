import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'available_box_widget.dart';

class BoxWidget extends StatelessWidget {
  BoxWidget({this.available, this.yesno, this.condition});
  final String? available;
  final String? yesno;
  final String? condition;
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
    return Container(
      width: 200.w,
      child: Column(
        children: [
          AvailableBox(),
          AvailableBox(),
          Container(
              margin: EdgeInsets.only(left: 10.0.w, right: 8.0.w, top: 5.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 14.0.h,
                      left: 20.w,
                    ),
                    child: Text(
                      "Condition",
                      style: textStyle.copyWith(color: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      right: 7.0.h,
                    ),
                    padding: EdgeInsets.only(left: 4.w, right: 4.w),
                    color: Colors.lightBlue,
                    child: Text(
                      "Like New",
                      style: textStyle.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
