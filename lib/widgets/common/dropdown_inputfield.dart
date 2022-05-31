import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownInputField extends StatefulWidget {
  final String title;
  void Function()? onTap;
  DropDownInputField({required this.title, this.onTap});

  @override
  _DropDownInputFieldState createState() => _DropDownInputFieldState();
}

class _DropDownInputFieldState extends State<DropDownInputField> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(widget.title), Icon(Icons.arrow_drop_down)],
              ),
            ),
          ),
          Divider(
            thickness: 1,
            color: AppColor.greyColor,
          )
        ],
      ),
    );
  }
}
