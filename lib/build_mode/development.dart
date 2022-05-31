
import 'package:endsmeet/config/app_config.dart';

import '../env.dart';

void main() async => Development();

class Development extends Env {
  @override
  Config? config = Config(appEnvironment: AppEnvironment.Development, api: Api(baseUrl: "https://theendsmeet.com/api/", clientId: ""));
}