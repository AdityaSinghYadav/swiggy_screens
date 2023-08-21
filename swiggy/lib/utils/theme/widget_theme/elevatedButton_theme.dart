import 'package:flutter/material.dart';

import '../../../const/AppColor.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: AppColors.tSecondaryColor,
      side: BorderSide(color: AppColors.tSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: 15),
      //tbuttonheight
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)))
  );


    static final darkElevtedButtonTheme = ElevatedButtonThemeData(


  style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: AppColors.tSecondaryColor,
    backgroundColor: Colors.white,
    side: BorderSide(color: AppColors.tSecondaryColor),
    padding: EdgeInsets.symmetric(vertical: 15), //tbuttonheight
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)))
    );

}