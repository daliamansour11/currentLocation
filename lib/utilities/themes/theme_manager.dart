import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_fonts.dart';
class ThemeManager {
  static ThemeData getLightAppTheme(BuildContext context) => ThemeData(
    fontFamily: AppFonts.NOTOSANSARABIC,
    scaffoldBackgroundColor: AppColors.whiteColor,
    backgroundColor: AppColors.whiteColor,
    primaryColor: AppColors.secondaryColor,
    shadowColor: AppColors.dropShadowColor,
    textTheme: getTextTheme(),
    elevatedButtonTheme: getElevatedButtonTheme(),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape:  RoundedRectangleBorder(
              side: const BorderSide(
                  width:  2,
                  color: AppColors.blackColor),
              borderRadius:
              BorderRadius.circular(10)),
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 8),
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: AppColors.blackColor.withOpacity(.4),
      selectedItemColor: AppColors.blackColor,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      enableFeedback: true,
      showUnselectedLabels: true,
      backgroundColor: AppColors.whiteColor,
      elevation: 8,
      showSelectedLabels: true,
      unselectedLabelStyle: Theme.of(context)
          .textTheme
          .labelSmall?.copyWith(fontSize: 8)
          .copyWith(color: AppColors.cancelColor),
    ),
    sliderTheme: SliderThemeData(
        thumbColor: AppColors.secondaryColor,
        inactiveTickMarkColor:AppColors.greyColor.withOpacity(0.3) ,
        activeTrackColor: AppColors.secondaryColor
    ),
    colorScheme: const ColorScheme.light(secondary: AppColors.secondaryColor,primary: AppColors.secondaryColor),
    switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(AppColors.lightGreyColor),
        thumbColor: MaterialStateProperty.all(AppColors.secondaryColor)),
    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(AppColors.whiteColor),
        fillColor: MaterialStateProperty.all(AppColors.secondaryColor)),
    radioTheme: RadioThemeData(
        fillColor:
        MaterialStateProperty.all(AppColors.blackColor)),
    iconTheme: const IconThemeData(color: AppColors.blackColor, size: 20),
    appBarTheme: AppBarTheme(
      color: AppColors.whiteColor,
      shadowColor: AppColors.blackColor.withOpacity(.3),
      elevation: 0,
      iconTheme:
      const IconThemeData(color: AppColors.blackColor, size: 25),
    ),
  );
}

TextTheme getTextTheme() => const TextTheme(
  // Styles:Poppins, Regular ,Size:10,
  labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.2,
      color: AppColors.blackColor),
  // Styles:Poppins, Medium ,Size:12,color:deepBlue
  labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor),
  // Styles:Poppins, Medium ,Size:14,
  labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor),
  // Styles:Gotham Rounded, Medium ,Size:11,--> splashScreen
  displaySmall: TextStyle(
      fontSize: 11,
      letterSpacing: 5,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor),
  // Styles:Poppins, SemiBold ,Size:16,color:white
  displayMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor),
  // Styles:Poppins, SemiBold ,Size:18,color:white
  displayLarge: TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.whiteColor),
  // Styles:Poppins, Medium ,Size:20,---> arch
  bodyLarge: TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.blackColor),
  bodyMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.blackColor),
  headlineLarge: TextStyle(
      fontSize: 50,
      letterSpacing: 1.5,
      fontWeight: FontWeight.w700,
      color: AppColors.darkGreyColor),
  // Styles:Poppins, Bold ,Size:20,color:green----> introscreens
  headlineMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: AppColors.blackColor),
  // Styles:Poppins, SemiBold ,Size:20,
  headlineSmall: TextStyle(
      fontSize: 22, fontWeight: FontWeight.w600, color: AppColors.whiteColor),
);
ElevatedButtonThemeData? getElevatedButtonTheme() => ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    onPrimary: AppColors.blackColor,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);