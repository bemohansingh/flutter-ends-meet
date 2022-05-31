import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  Color backgroundColor;
  Color borderColor;
  Color textColor;
  String text;
  double borderradius;

  void Function()? onTap;

  AppButton(
      {required this.text,
      this.backgroundColor = AppColor.whiteColor,
      this.borderColor = AppColor.borderColor,
      this.textColor = AppColor.primaryColor,
        this.borderradius = 25.0,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.0.w),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: borderColor, width: 2.0),
            borderRadius: BorderRadius.circular(borderradius),
          ),
          child: Center(
            child: Text(
              text,
              style: theme.textTheme.bodyText1?.copyWith(
                  fontSize: 14.sp, color: textColor, letterSpacing: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
