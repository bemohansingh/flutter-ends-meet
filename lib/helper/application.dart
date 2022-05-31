import 'package:endsmeet/helper/preferences.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Application {
  static FluroRouter? router;

  static Future checkFreshInstall(Preferences storage) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('first_run') ?? true) {
      await storage.removeAll();
      prefs.setBool('first_run', false);
    }
  }

  static pushTo(BuildContext context, String path, {RouteSettings? routeSettings = null}) {
    router!.navigateTo(context, path, transition: TransitionType.inFromRight, routeSettings: routeSettings);
  }

}