import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNavbar extends StatelessWidget {
  Widget titleWidget;
  Widget? rightIcon;
  bool showRightIcon;
  final Function() backTapped;
  Function()? rightIconTapped;

  PageNavbar({
    required this.titleWidget,
    this.rightIcon,
    this.showRightIcon = true,
    required this.backTapped,
    this.rightIconTapped,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Container(
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    backTapped();
                  },
                  icon: Icon(Icons.arrow_back, color: AppColor.whiteColor,)),
              Expanded(child: titleWidget),
              Visibility(
                visible: showRightIcon,
                child: IconButton(
                    onPressed: () {
                      if (rightIconTapped != null) {
                        rightIconTapped!();
                      }
                    },
                    icon: rightIcon ?? Icon(Icons.add, color: AppColor.whiteColor)),
              )
            ],
          ),
        ),
      ),
    );
  }
}