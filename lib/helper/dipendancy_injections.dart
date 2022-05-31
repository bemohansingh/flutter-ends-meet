
import 'package:endsmeet/features/home_screen/bloc/category_bloc.dart';
import 'package:endsmeet/helper/preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../env.dart';

final sl = GetIt.instance;

Future init(AppEnvironment appEnvironment) async {

  //Storage
  //Preferences
  sl.registerSingleton(Preferences());

  // Device
  sl.registerFactory(() => FlutterSecureStorage());


  //Bloc
  sl.registerFactory(
          () => CategoryBloc());
  return await sl.allReady();
}