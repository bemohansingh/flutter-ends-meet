import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        boxShadow: [
          BoxShadow(
              color: AppColor.whiteColor,
              spreadRadius: 8,
              blurRadius: 7,
              offset: Offset(1, 1))
        ],
      ),
      margin: EdgeInsets.only(left: 14.w, right: 14.w, top: 14.h, bottom: 14.h),
      height: 38.h,
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',
            icon: Padding(
              padding:
                  EdgeInsets.only(left: 8.w, right: 8.w, top: 8.h, bottom: 8.0),
              child: Icon(Icons.search),
            )),
      ),
    );
  }
}
