import 'package:flutter/material.dart';
import 'package:swiggy/utils/theme/widget_theme/elevatedButton_theme.dart';

import 'package:swiggy/utils/theme/widget_theme/outlinedButton_theme.dart';
import 'package:swiggy/utils/theme/widget_theme/text_field_theme.dart';
import 'package:swiggy/utils/theme/widget_theme/text_theme.dart';

class TAppTheme{
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevtedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );



}