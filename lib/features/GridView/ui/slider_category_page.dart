import 'package:endsmeet/widgets/cards/slider_category_widget.dart';

import 'package:flutter/material.dart';

class SliderCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SliderCategoryWidget(),
          SliderCategoryWidget(),
          SliderCategoryWidget(),
          SliderCategoryWidget(),
          SliderCategoryWidget(),
        ],
      ),
    );
  }
}
