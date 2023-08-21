import 'package:flutter/material.dart';

import '../../../const/AppColor.dart';



class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: AppColors.tSecondaryColor,//white for dark
      side:BorderSide(color: AppColors.tSecondaryColor),//white for dark
      padding: EdgeInsets.symmetric(vertical: 15), //tbuttonheight

    ));

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: Colors.white,//white for dark
        side:BorderSide(color: Colors.white),//white for dark
        padding: EdgeInsets.symmetric(vertical: 15), //tbuttonheight

      ));


}