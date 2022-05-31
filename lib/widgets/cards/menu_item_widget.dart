import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemWidget extends StatelessWidget {
  final String text;
  final Widget? icon;
  final Function()? onTap;
  MenuItemWidget({required this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Text(text),
            ),
            if (icon != null)
              Padding(
                padding: EdgeInsets.only(right: 100.w),
                child: icon!,
              )
          ],
        ),
        height: 37.h,
      ),
    );
  }
}
