import 'package:endsmeet/features/home_screen/ui/home_screen.dart';
import 'package:endsmeet/features/menu_screen/ui/side_menu.dart';

import 'package:endsmeet/widgets/common/menu_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum MenuScreens { home, address, profile }

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  bool isCollapsed = true;
  double? screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 150);
  AnimationController? _controller;
  Animation<Offset>? _SideMenuSlideAnimation;
  Animation<Offset>? _mainScreenSlideAnimation;
  MenuScreens selectedMenu = MenuScreens.home;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _SideMenuSlideAnimation =
        Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0))
            .animate(_controller!);
    _mainScreenSlideAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(0.3, 0))
            .animate(_controller!);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          menu(context),
          menuMainScreen(context),
        ],
      ),
    );
  }

  Widget menu(context) {
    return SlideTransition(
      position: _SideMenuSlideAnimation!,
      child: Align(
          alignment: Alignment.topLeft,
          child: SideMenuScreen()),
    );
  }

  Widget menuMainScreen(context) {
    final navbar = MenuNavbar(
      titleWidget: Center(child: Text(AppLocalizations.of(context)!.appName)),
      menuTapped: toggleNavbar,
      rightIcon: Icon(Icons.add),
    );
    Widget selectedScreen = HomeScreen(
      nabbar: navbar,
    );
    switch (selectedMenu) {
      case MenuScreens.home:
        selectedScreen = HomeScreen(
          nabbar: navbar,
        );
    }
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.6 * screenWidth!,
      right: isCollapsed ? 0 : -0.2 * screenWidth!,
      child: SlideTransition(
        position: _mainScreenSlideAnimation!,
        child: MaterialApp(
          home: selectedScreen,
        ),
      ),
    );
  }

  toggleNavbar() {
    setState(() {
      if (isCollapsed)
        _controller!.forward();
      else
        _controller!.reverse();

      isCollapsed = !isCollapsed;
    });
  }
}
