import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SafeArea(
        child: AlertDialog(
      title: Text(
        'Logout',
        style: theme.textTheme.bodyText1
            ?.copyWith(fontSize: 16.h, fontWeight: FontWeight.bold),
      ),
      content: Text('Do you want to really logout?'),
      actions: [
        TextButton(
          onPressed: () {},
          child: Text('DISAGREE'),
        ),
        TextButton(
          onPressed: () {},
          child: Text('AGREE'),
        )
      ],
    ));
  }
}
