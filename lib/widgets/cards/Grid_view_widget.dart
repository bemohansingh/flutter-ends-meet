import 'package:endsmeet/resources/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewWidget extends StatelessWidget {
  GridViewWidget({this.image, required this.title});
  final String title;
  final Image? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      
      height: 180.h,
      width: 180.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(child: Image.asset(AppImage.gaming)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "PlayStation",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              textAlign: TextAlign.end,
            ),
          )
        ],
      ),
    );
  }
}
