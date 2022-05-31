import 'package:endsmeet/resources/images.dart';
import 'package:endsmeet/widgets/cards/menu_header_widget.dart';
import 'package:endsmeet/widgets/cards/menu_item_widget.dart';
import 'package:endsmeet/widgets/cards/menu_login_widget.dart';
import 'package:endsmeet/widgets/cards/menu_logo_widget.dart';
import 'package:endsmeet/widgets/cards/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SideMenuScreen extends StatefulWidget {
  @override
  _SideMenuScreenState createState() => _SideMenuScreenState();
}

class _SideMenuScreenState extends State<SideMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      MenuLogoWidget(),
                      MenuHeaderWidget(),
                      MenuItemWidget(
                        text: "HOME",
                        icon: Icon(Icons.home),
                      ),
                      Divider(),
                      MenuItemWidget(
                        icon: Icon(Icons.search),
                        text: "SEARCH",
                      ),
                      Divider(),
                      MenuItemWidget(
                        text: "GAMING",
                      ),
                      Divider(),
                      MenuItemWidget(
                        text: "PHONE",
                      ),
                      Divider(),
                      MenuItemWidget(
                        text: "BOOKS",
                      ),
                      Divider(),
                      MenuItemWidget(
                        text: "ARTS & CRAFTS",
                      ),
                      Divider(),
                      MenuItemWidget(
                        text: "HOME APPLIANCES",
                      ),
                      Divider(),
                      MenuItemWidget(
                        text: "COMPUTER",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            LoginWidget()
          ],
        ),
      ),
    );
  }
}
