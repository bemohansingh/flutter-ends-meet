import 'package:endsmeet/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderWidget extends StatefulWidget {
   double min;
   double max;
  SliderWidget({required this.min,required this.max});

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _currentSliderValue = 0;
  @override
  void initState() {
  _currentSliderValue = widget.min;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0.w),
          child: Row(
            children: [
              Text('${widget.min.toInt()}'),
              Expanded(
                child: Slider(
                  value: _currentSliderValue,
                  min: widget.min,
                  max: widget.max,
                //  divisions: 5,
                  activeColor: Colors.green,
                  inactiveColor: AppColor.greyColor,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
              ),
              Text('${widget.max.toInt()}')
            ],
          ),
        ),
        Divider(
          thickness: 1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Your Offered Amount',style: theme.textTheme.bodyText1?.copyWith(fontSize: 14.0),),
              Container(
                decoration: BoxDecoration(
                    color: AppColor.blueButtonColor,
                    borderRadius: BorderRadius.circular(5.0)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 8.0.w),
                  child: Text('${_currentSliderValue.toInt()}',style: theme.textTheme.bodyText1?.copyWith(fontSize: 14.0,color: AppColor.whiteColor),),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
