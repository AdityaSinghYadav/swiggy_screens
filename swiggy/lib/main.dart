import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swiggy/ui/splash_screen.dart';
import 'package:swiggy/utils/theme/theme.dart';

void main() async {

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812), builder: (BuildContext context, Widget? child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        themeMode: ThemeMode.system,

        home: SplashScreen(),
      );
    },

    );
  }
}