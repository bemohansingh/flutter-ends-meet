import 'package:cached_network_image/cached_network_image.dart';
import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/resources/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryCard extends StatelessWidget {
  String title;
  String subtitle;
  String image;

  CategoryCard({required this.title,required this.subtitle,required this.image});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Container(
                height: 120.0.h,
                width: 140.0.w,
                padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                child: CachedNetworkImage(imageUrl: image,fit: BoxFit.contain,)
              ),
              Expanded(
                child: Container(
                  height: 100.h,
                  margin: EdgeInsets.only(top: 20.h, right: 4.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.bodyText1?.copyWith( fontSize: 16.sp),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top:8.0.h),
                        child: Text(
                          subtitle,
                          style: theme.textTheme.bodyText2?.copyWith(fontSize: 12.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 12.sp,
                    )),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 0.5,
        ),
      ],
    );
  }
}
