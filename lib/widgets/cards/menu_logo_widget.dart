import 'package:endsmeet/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuLogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: EdgeInsets.only(right: 90),
          height: 188.h,
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.cover,
          )),
    );
  }
}
