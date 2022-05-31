import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/widgets/common/add_new_button.dart';
import 'package:endsmeet/widgets/common/app_button.dart';
import 'package:endsmeet/widgets/common/dropdown_inputfield.dart';
import 'package:endsmeet/widgets/common/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddItemScreen extends StatefulWidget {

  @override
  _AddItemScreenState createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropDownInputField(title: 'Categories'),
            DropDownInputField(title: 'Sub Categories'),
            DropDownInputField(title: 'What Are You Selling'),
            InputFieldWidget(placeHolder: 'Product Name',),
            InputFieldWidget(placeHolder: 'Product Proce',),
            InputFieldWidget(placeHolder: 'Product Min Price',),
            InputFieldWidget(placeHolder: 'Product Detail',),
           Padding(
             padding: EdgeInsets.symmetric(horizontal:16.0.w,vertical: 18.0.h),
             child: OutlinedButton(
               onPressed: (){},
               style: OutlinedButton.styleFrom(
                 side: BorderSide(color: AppColor.blueButtonColor)

               ),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(Icons.photo),
                   Text('Gallery')
                 ],
               ),
             ),
           ),
            Text('Select Your Address'),
            AppButton(text: 'Add Address',borderradius: 10.0,backgroundColor:AppColor.greyColor ,),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0.h),
              child: AppButton(text: 'ADD ITEM',textColor: AppColor.greyColor,borderColor: AppColor.greyColor,),
            )

          ],
        ),
      ),
    );
  }
}
