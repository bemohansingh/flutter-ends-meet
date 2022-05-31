import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/widgets/common/add_new_button.dart';
import 'package:endsmeet/widgets/common/app_button.dart';
import 'package:endsmeet/widgets/common/dropdown_inputfield.dart';
import 'package:endsmeet/widgets/common/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressScreen extends StatefulWidget {

  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column( 
            children: [
              DropDownInputField(title: 'Address Name',),
              DropDownInputField(title: 'Area'),
              InputFieldWidget(placeHolder: 'Block',),
              InputFieldWidget(placeHolder: 'Road No',),
              InputFieldWidget(placeHolder: 'Building No',),
              InputFieldWidget(placeHolder: 'Appartment',),
              InputFieldWidget(placeHolder: 'Floor No',),
              InputFieldWidget(placeHolder: 'Additional',),
              Padding(
                padding: EdgeInsets.only(top: 28.0.h),
                child: AppButton(text: 'ADD ITEM',textColor: AppColor.greyColor,borderColor:AppColor.greyColor ,),
              )

            ],
          ),
        ),
    );
  }
}
