import 'package:endsmeet/models/slide.dart';
import 'package:endsmeet/resources/app_colors.dart';
import 'package:endsmeet/widgets/common/slide_dots.dart';
import 'package:endsmeet/widgets/common/slide_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroductionScreen extends StatefulWidget {

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  int _currentPage = 0;


  final PageController _pageController = PageController(
      initialPage: 0
  );



  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }


  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Container(
          color: AppColor.lightBlueColor,
          child: Stack(
            children: [
              PageView.builder(
                scrollDirection: Axis.horizontal,
                onPageChanged: _onPageChanged,
                controller: _pageController,
                itemCount: slideList.length,
                itemBuilder: (ctx, i) =>
                    SlideItem(
                      index: i,
                    ),
              ),
             Column(
               children: [
                 Container(
                   padding: EdgeInsets.only(top: 500.h),
                   child: Row(
                    // mainAxisSize: MainAxisSize.min,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       for(int i = 0; i<slideList.length; i++)
                         if(i == _currentPage)
                           SlideDots(isActive: true)
                         else
                           SlideDots(isActive: false)
                     ],
                   ),
                 ),
               ],
             ),
              Positioned(
                right: 20,
                bottom: 30,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(
                      Icons.arrow_forward,
                    size: 28.0.h,
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
