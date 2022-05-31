import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TitleProduct extends StatelessWidget {
  final String title;
  final String name;
  final String price;
  TitleProduct({required this.title,required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0.h),
            child: Text(
              title,
              style: theme.textTheme.bodyText1?.copyWith(fontSize: 26.h),
            ),
          ),
          Text(name,style: theme.textTheme.bodyText2?.copyWith(color: AppColor.greyColor,fontSize: 18.h),),
          Padding(
            padding: EdgeInsets.only(top:8.0.h,bottom: 26.h),
            child: Text(price,
                style: theme.textTheme.bodyText1?.copyWith(fontSize: 20.h)),
          ),
          Divider(
            thickness: 1,
          )

        ],
      ),
    );
  }
}
