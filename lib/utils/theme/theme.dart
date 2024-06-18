import 'package:epic_mart/utils/theme/custom_themes/appbar_theme.dart';
import 'package:epic_mart/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:epic_mart/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:epic_mart/utils/theme/custom_themes/chip_theme.dart';
import 'package:epic_mart/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:epic_mart/utils/theme/custom_themes/outline_button-theme.dart';
import 'package:epic_mart/utils/theme/custom_themes/text_field_theme.dart';
import 'package:epic_mart/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      //to make the system understand if it is light or dark
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextTheme.lightTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheet,
      outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButton,
      chipTheme: TChipTheme.lightChipTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxThemeData);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      //to make the system understand if it is light or dark
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTextTheme.darkTextTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheet,
      outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButton,
      chipTheme: TChipTheme.darkChipTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxThemeData);
}
