import 'package:endsmeet/constants/size_height_width_constants.dart';
import 'package:endsmeet/helper/application.dart';
import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/resources/images.dart';
import 'package:endsmeet/routes/app_routes.dart';
import 'package:endsmeet/widgets/common/app_button.dart';
import 'package:endsmeet/widgets/common/detail_cart.dart';
import 'package:endsmeet/widgets/common/page_navebar.dart';
import 'package:endsmeet/widgets/common/summary_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        child: PageNavbar(titleWidget:  Text('Cart'),showRightIcon: false, backTapped: (){Navigator.of(context).pop();},),
        preferredSize: Size.fromHeight(HeightConstant.navbarHeight.h),
      ),
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SummaryCart(
              image: AppImage.iphoneImgUrl,
              title: 'Iphone 11',
              name: 'Mobile',
              deliverytime: 'Est.Delivery 3-4 days',
              price: 'BHD120.0',
            ),
            DetailCart(
              subtotal: 'BHD120.0',
              shippingAmount: 2.00,
              total: 'BHD122.00',
              paymentMethod: 'BENEFIT CO',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.0.w,vertical: 10.0.h),
              child: Text('Shipping Address:',
                  style: theme.textTheme.bodyText1?.copyWith(fontSize: 14.h)),
            ),
            Padding(
              padding: EdgeInsets.only(top:8.0.h),
              child: AppButton(
                onTap: (){
                  Application.pushTo(context, AppRoutes.profileRoute?.addAddress ?? "");
                },
                text: 'ADD ADDRESS FOR SHIPMENT',
                textColor: AppColor.blueButtonColor,
                borderColor: AppColor.blueButtonColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h),
              child: AppButton(text: 'CHECKOUT'),
            )
          ],
        ),
      ),
    );
  }
}
