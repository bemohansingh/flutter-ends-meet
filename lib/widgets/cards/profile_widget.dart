import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({  this.title, this.icon, this.qbox});
  final Widget? title;
  final Widget? icon;
  final String? qbox;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
      margin: EdgeInsets.all(12),
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Icon(Icons.remove_red_eye),
            ),
            Container(
                margin: EdgeInsets.only(right: 120),
                child: Text(
                  "My Products",
                  style: TextStyle(fontSize: 18),
                )),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.lightBlue,
              height: 30.h,
              width: 30.w,
              child: Text(
                "0",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      height: 40.h,
    );
  }
}
