import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewButton extends StatelessWidget {
  final String name;
  void Function()? onTap;


  AddNewButton({required this.name,this.onTap});


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return TextButton(
      onPressed: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle_rounded,
              color: AppColor.blueButtonColor,
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0.w),
              child: Text(
                name,

                style: theme.textTheme.bodyText1?.copyWith( fontSize: 16.sp,color: AppColor.blueButtonColor),
              ),
            )
          ],
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColor.whiteColor),
      ),
    );
  }
}
