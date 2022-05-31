import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuHeaderWidget extends StatefulWidget {
  MenuHeaderWidget({this.language});
  final String? language;
  @override
  _MenuHeaderWidgetState createState() => _MenuHeaderWidgetState();
}

class _MenuHeaderWidgetState extends State<MenuHeaderWidget> {
  @override
  String language = "English";

  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8.0.h),
        height: 50.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Language",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.h),
            ),
            Container(
              margin: EdgeInsets.only(left: 90),
              child: DropdownButton<String>(
                value: "$language",
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 30.h,
                elevation: 25,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    language = newValue!;
                  });
                },
                items: <String>[
                  'English',
                  'Arabic',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
