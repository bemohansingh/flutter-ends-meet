import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/widgets/common/app_button.dart';
import 'package:endsmeet/widgets/common/input_field.dart';
import 'package:endsmeet/widgets/common/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Negotiation extends StatefulWidget {


  @override
  _NegotiationState createState() => _NegotiationState();
}

class _NegotiationState extends State<Negotiation> {

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
      child: AlertDialog(
        title: SingleChildScrollView(
          child: Column(
            children: [
              Text('negotation',
                  style: theme.textTheme.bodyText1?.copyWith(fontSize: 16.h)),
              SliderWidget(min: 200, max: 300),
              Divider(
                thickness: 1.0,
              ),
              Text(
                'Alert Send to',
                style: theme.textTheme.bodyText1
                    ?.copyWith(fontSize: 16.h, fontWeight: FontWeight.bold),
              ),
              InputFieldWidget(
                placeHolder: 'gauravthagunna64@gmail.com',
                leftIcon: Icon(Icons.email_outlined),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18.0.h),
                child: AppButton(
                  text: 'SUBMIT',
                  backgroundColor: AppColor.blueButtonColor,
                  textColor: AppColor.whiteColor,
                  borderColor: AppColor.blueButtonColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10.0.h),
                child: AppButton(
                  text: 'CANCEL',
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
