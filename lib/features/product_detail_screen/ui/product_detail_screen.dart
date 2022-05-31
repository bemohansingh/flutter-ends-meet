import 'package:endsmeet/constants/size_height_width_constants.dart';
import 'package:endsmeet/helper/application.dart';
import 'package:endsmeet/helper/function_helper.dart';
import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/resources/images.dart';
import 'package:endsmeet/routes/app_routes.dart';
import 'package:endsmeet/widgets/common/app_button.dart';
import 'package:endsmeet/widgets/common/description_detail_product.dart';
import 'package:endsmeet/widgets/common/description_product.dart';
import 'package:endsmeet/widgets/common/image_product.dart';
import 'package:endsmeet/widgets/common/page_navebar.dart';
import 'package:endsmeet/widgets/common/title_product.dart';
import 'package:endsmeet/widgets/others/negotation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductScreenDetail extends StatefulWidget {
  @override
  _ProductScreenDetailState createState() => _ProductScreenDetailState();
}

class _ProductScreenDetailState extends State<ProductScreenDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: PageNavbar(
          titleWidget: Text('Product Detail'),
          showRightIcon: false,
          backTapped: () {
            Navigator.of(context).pop();
          },
        ),
        preferredSize: Size.fromHeight(HeightConstant.navbarHeight.h),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageProduct(image: AppImage.iphoneImgUrl),
              TitleProduct(title: 'Test1', name: 'X Box', price: 'BHD 5'),
              DescriptionProduct(
                title: 'Test1',
              ),
              DescDetailProduct(detail: 'Box Available', status: 'Yes'),
              Divider(
                thickness: 1,
              ),
              DescDetailProduct(detail: 'Booklet Available', status: 'Yes'),
              Divider(
                thickness: 1,
              ),
              DescDetailProduct(detail: 'Condition', status: 'Like new'),
              Divider(
                thickness: 1,
              ),
              AppButton(
                onTap: () {
                  Application.pushTo(
                      context, AppRoutes.productDetailRoute?.cart ?? "");
                },
                text: 'Buy Now',
                backgroundColor: AppColor.blueButtonColor,
                borderColor: AppColor.blueButtonColor,
                textColor: AppColor.whiteColor,
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.0.h, bottom: 8.0.h),
                child: AppButton(
                  onTap: (){
                    AppFunction.showDialogScreen(context, Negotiation(),hideWhenBackgroundTapped: true);
                  },

                  text: 'Negotitate'.toUpperCase(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
