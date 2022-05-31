import 'package:endsmeet/models/slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem({required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 60.h),
          child: Center(
              child: Image.asset(
            slideList[index].imgUrl,
            fit: BoxFit.cover,
          )),
        ),
      ],
    );
  }
}
