import 'package:endsmeet/widgets/cards/Grid_view_widget.dart';
import 'package:endsmeet/widgets/cards/GridWidgetDetail.dart';
import 'package:endsmeet/widgets/cards/box_widget.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: GridView.builder(
        shrinkWrap: true,
        // scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (context, index) => Column(
          children: [
            BoxWidget(),
            BoxWidget(),
          ],
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //childAspectRatio: 3 / 2,
          //crossAxisSpacing: 11,
        ),
      ),
    );
  }
}
