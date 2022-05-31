import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescDetailProduct extends StatelessWidget {
  String detail;
  String status;

  DescDetailProduct({required this.detail, required this.status});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0.w,vertical: 4.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(detail),
            Container(
              decoration: BoxDecoration(
                  color: AppColor.blueButtonColor,
                  borderRadius: BorderRadius.circular(5.0)),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 6.0.w),
                child: Center(
                    child: Text(
                  status,
                  style: theme.textTheme.bodyText2
                      ?.copyWith(color: AppColor.whiteColor),
                )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
