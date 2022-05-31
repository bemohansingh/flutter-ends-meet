import 'package:endsmeet/widgets/cards/slider_card_widget.dart';
import 'package:flutter/material.dart';

class SlidedWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SliderCardWidget(),
          SliderCardWidget(),
          SliderCardWidget(),
          SliderCardWidget(),
          SliderCardWidget(),
        ],
      ),
    );
  }
}
