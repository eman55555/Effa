// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_entity.dart';
import 'package:effah/modules/app/app_repository.dart';
import 'package:effah/pages/complate_info.dart';
import 'package:effah/pages/home_page.dart/home_page.dart';
import 'package:effah/pages/loading.dart';
import 'package:effah/pages/auth/login_page.dart';
import 'package:effah/pages/auth/pin_page.dart';
import 'package:effah/modules/app/app_state_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:provider/provider.dart';

import '../basic_info_provider.dart';

class EffaApp extends StatelessWidget {
  final AppRepository repository;

  const EffaApp({required this.repository});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: InfoProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AppStateProvider(repository: repository),
        ),
      ],
      child: Consumer<AppStateProvider>(builder: (context, model, child) {
        // ignore: prefer_typing_uninitialized_variables
        var currentPage;
        switch (model.state) {
          case AppState.authenticated:
            currentPage = HomePage();
            break;
          case AppState.unauthenticated:
            currentPage = LoginPage();
            break;
          case AppState.notCompleted:
            currentPage = ComplateInfo();
            break;
          case AppState.notVerified:
            currentPage = PinPage();
            break;
          default:
            currentPage = AppLoading();
        }
        return ScreenUtilInit(
          designSize: Size(375, 812),
          // minTextAdapt: true,
          //splitScreenMode: true,
          builder: ((context, child) => MaterialApp(
//               theme:  Theme.of(context).copyWith(
//  appBarTheme: Theme.of(context)
//      .appBarTheme
//      .copyWith(backgroundColor: Colors.red),
              theme: ThemeData(
                   primaryColor: white,
              //  appBarTheme: SystemUiOverlayStyle.light.copyWith(           statusBarColor: Theme.of(context).primaryColor,         ),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: transparnt),
        brightness: Brightness.light),
        
                  fontFamily: 'JFFlat',
                  scrollbarTheme: ScrollbarThemeData().copyWith(
                    thumbColor: MaterialStateProperty.all(basicPink),
                    
                  )),
              debugShowCheckedModeBanner: false,

              // routes: {
              //   "/login": (_) => LoginPage(),
              //   "/Home": (_) => HomeMain(),
              //   "/pinPage": (_) => PinPage(),
              //   "/complet": (_) => CompleteInfo()

              //   // put our new route here ...
              //   // '/': (context) => currentPage,
              // },
              home: currentPage)),
        );
      }),
    );
  }
}
