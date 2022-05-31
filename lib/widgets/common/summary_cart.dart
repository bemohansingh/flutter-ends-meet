import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryCart extends StatelessWidget {
  String image;
  String name;
  String title;
  String deliverytime;
  String price;

  SummaryCart(
      {required this.image,
      required this.title,
      required this.name,
      required this.deliverytime,
      required this.price});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 8.0.h,horizontal: 10.w),
      child: Container(
          child: Row(
        children: [
          Expanded(
            child: Container(
              height: 130.h,
                width: 80.w,

                child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.contain,
            )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0.w,right: 50.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,style: theme.textTheme.bodyText1?.copyWith(fontSize: 20.sp),),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0.w),
                  child: Text(title,style: theme.textTheme.bodyText2?.copyWith(color: AppColor.greyColor,fontSize:12.sp),),
                ),
                Text(deliverytime,style: theme.textTheme.bodyText2?.copyWith(color: AppColor.greyColor,fontSize:12.sp),),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0.h),
                  child: Text(price,style: theme.textTheme.bodyText1?.copyWith(fontSize: 16.sp,fontWeight:FontWeight.bold ),),
                ),

              ],

            ),
          ),

        ],
      )),
    );
  }
}
