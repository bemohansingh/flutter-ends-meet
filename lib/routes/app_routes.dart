import 'package:endsmeet/features/menu_screen/ui/menu_screen.dart';
import 'package:endsmeet/helper/dipendancy_injections.dart';
import 'package:endsmeet/helper/preferences.dart';
import 'package:endsmeet/routes/product_detail_routes.dart';
import 'package:endsmeet/routes/profile_routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static Preferences sharedPreferences = sl<Preferences>();

  static String root = "/";
  // static AuthRoute authRoute;
  static ProfileRoute? profileRoute;
  static ProductDetailRoute? productDetailRoute;

  static Future configureRoutes(FluroRouter router) async {
    router.notFoundHandler = Handler(
      // ignore: missing_return
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
        });

    // authRoute = AuthRoute(router: router);
    profileRoute = ProfileRoute(router: router);
    productDetailRoute = ProductDetailRoute(router: router,);


    router.define(root, handler: menuScreenHandler);

  }

  static var menuScreenHandler = Handler (
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return MenuScreen();
      });
}