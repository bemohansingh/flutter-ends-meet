import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuNavbar extends StatelessWidget {
  Widget titleWidget;
  Widget? rightIcon;
  bool showRightIcon;
  final Function() menuTapped;
  Function()? rightIconTapped;

  MenuNavbar({
    required this.titleWidget,
    this.rightIcon,
    this.showRightIcon = true,
    required this.menuTapped,
    this.rightIconTapped,
  }) : assert(showRightIcon == true && rightIcon != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 35.h,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        menuTapped();
                      },
                      icon: Icon(Icons.menu,)),
                  Expanded(child: titleWidget),
                  Visibility(
                    visible: showRightIcon,
                    child: IconButton(
                        onPressed: () {
                          if (rightIconTapped != null) {
                            rightIconTapped!();
                          }
                        },
                        icon: rightIcon ?? Icon(Icons.add)),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 4.h,
              color: Colors.black.withOpacity(0.04),
            )
          ],
        ),
      ),
    );
  }
}
