
import 'package:endsmeet/helper/application.dart';
import 'package:endsmeet/routes/app_routes.dart';
import 'package:fluro/fluro.dart';
import '../helper/dipendancy_injections.dart' as di;
import '../env.dart';

class Config {
  AppEnvironment? appEnvironment;
  Api? api;

  Config({this.appEnvironment, this.api});

  Future<void> awaitPreAppStartupDependencies() async {
    await di.init(appEnvironment!);
    final router = FluroRouter();
    await AppRoutes.configureRoutes(router);
    Application.router = router;
    ///USER LOGEDIN STATE

  }

}



class Api {
  String? baseUrl;
  String? clientId;
  Api({this.baseUrl, this.clientId});
}