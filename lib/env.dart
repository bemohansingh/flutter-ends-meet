import 'package:endsmeet/features/home_screen/bloc/category_bloc.dart';
import 'package:endsmeet/provider/local_provider.dart';
//import 'package:endsmeet/widgets/cards/menu_header_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'config/app_config.dart';
import 'config/theme.dart';
import 'helper/application.dart';
import 'helper/dipendancy_injections.dart';
import 'library/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum AppEnvironment { Development, UAT, Production }

class Env {
  static Env? value;
  Config? config;

  setPotraitDeviceOrentation() {
    // Force the application to remain in portrait mode
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  //constructor
  Env() {
    value = this;
    setPotraitDeviceOrentation();
    initializeStartUpDependenciesAndRun();
  }

  initializeStartUpDependenciesAndRun() async {
    await config!.awaitPreAppStartupDependencies();
    runApp(
      Builder(
        builder: (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<CategoryBloc>(
                create: (context) => sl<CategoryBloc>(),
              ),
            ],
            child: GestureDetector(
              onTap: () {
                var currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus &&
                    currentFocus.focusedChild != null) {
                  FocusManager.instance.primaryFocus?.unfocus();
                }
              },
              child: ChangeNotifierProvider(
                create: (context) => LocaleProvider(),
                builder: (context, child) {
                  final provider = Provider.of<LocaleProvider>(context);
                  return MaterialApp(
                    debugShowCheckedModeBanner: false,
                    locale: provider.locale,
                    supportedLocales: L10n.all,
                    localizationsDelegates: [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    title: "AppConstant.appName",
                    theme: customAppTheme(),
                    onGenerateRoute: Application.router!.generator,
                    builder: (BuildContext context, Widget? child) {
                      ScreenUtil.init(
                          BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width,
                              maxHeight: MediaQuery.of(context).size.height),
                          designSize: Size(360, 690),
                          orientation: Orientation.portrait);

                      return MediaQuery(
                        data: MediaQuery.of(context)
                            .copyWith(textScaleFactor: 1.0),
                        child: child ?? Text("widget not found"),
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
