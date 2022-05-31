import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DetailCart extends StatelessWidget {
  final String subtotal;
  final double shippingAmount;
  final String total;
  final String paymentMethod;

  DetailCart({required this.subtotal, required this.shippingAmount, required this.total,required this.paymentMethod});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        children: [

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Subtotal:',style: theme.textTheme.bodyText1?.copyWith(fontSize: 16.h)),
                Text(subtotal,style: theme.textTheme.bodyText1?.copyWith(fontSize: 16.h,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 8.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Shipping & Returns:',style: theme.textTheme.bodyText1?.copyWith(fontSize: 16.sp)),
                Text(shippingAmount.toString(),style: theme.textTheme.bodyText1?.copyWith(fontSize: 16.h,color: AppColor.blueButtonColor))
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('TOTAL',style: theme.textTheme.bodyText1?.copyWith(fontSize: 16.sp,fontWeight: FontWeight.bold),),
                Text(total,style: theme.textTheme.bodyText1?.copyWith(fontSize: 20.sp,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 10.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('PAYMENT METHOD',style: theme.textTheme.bodyText1?.copyWith(fontWeight:FontWeight.bold ,fontSize: 16.h,letterSpacing: 0.4)),
                Text(paymentMethod,style: theme.textTheme.bodyText1?.copyWith(fontWeight:FontWeight.bold ,fontSize: 20.h,color: AppColor.blueButtonColor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
