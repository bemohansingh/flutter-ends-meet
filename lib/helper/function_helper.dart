import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppFunction{
  static Future<void> showDialogScreen(BuildContext context,Widget dialogWidget,{bool hideWhenBackgroundTapped = false}){
    return showDialog<void>(
      context: context,
      barrierDismissible: hideWhenBackgroundTapped, // user must tap button!
      builder: (BuildContext context) {
        return dialogWidget;
      },
    );
  }
}