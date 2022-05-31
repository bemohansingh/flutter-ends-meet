import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/widgets/common/app_button.dart';
import 'package:endsmeet/widgets/common/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column( 
          children: [
            InputFieldWidget(leftIcon: Icon(Icons.email_outlined,),placeHolder: 'Email or username',),
            InputFieldWidget(leftIcon: Icon(Icons.lock),placeHolder: '*****',),
            Padding(
              padding: EdgeInsets.only(top: 8.0.h,bottom: 14.0.h),
              child: Text('Forgot Password',style: theme.textTheme.bodyText1?.copyWith(color: AppColor.greyColor),),
            ),
            AppButton(text: 'Sign In',textColor: AppColor.greyColor,borderColor: AppColor.greyColor,),
            Padding(
              padding: EdgeInsets.only(top:12.0.h,bottom: 10.0.h),
              child: Text('Skip For Now'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  Text('Sign Up',)
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.0.h),
              child: AppButton(text: 'LOGIN WITH FACEBOOK'),
            ),
            AppButton(text: 'LOGIN WITH GOOGLE'),

          ],
        ),
      ),
    );
  }
}
