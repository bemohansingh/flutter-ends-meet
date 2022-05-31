import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DescriptionProduct extends StatelessWidget {
  final String title;
  DescriptionProduct({required this.title});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Column(
        children: [
          Text(
              'Product Description',
              style: theme.textTheme.bodyText1?.copyWith(fontSize: 20.h)
          ),
          Padding(
            padding: EdgeInsets.all(8.0.h),
            child: Text(title,style: theme.textTheme.bodyText2?.copyWith(color: AppColor.greyColor,fontSize: 18.h)),
          )
        ],
      ),
    );
  }
}
