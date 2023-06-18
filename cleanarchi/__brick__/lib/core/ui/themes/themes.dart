import 'package:{{name.snakeCase()}}/core/ui/themes/themes.dart';
import 'package:flutter/material.dart';

export 'app_icons.dart';
export 'colors.dart';
export 'typography.dart';

ThemeData themeLight() {
  return ThemeData.light().copyWith(
    // primaryColor: Color(0xFF007F80),
    primaryColor: AppColors.white,
    primaryColorDark: const Color(0xFF007F80),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: AppColors.lBlack),
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: const Color(0xFFD9D9D9),
      titleTextStyle: AppTypography.appBarTitle,
      toolbarTextStyle: AppTypography.appBarTitle,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
        // titleSmall: TextStyle(fontSize: 16, color: AppColors.xlBlack),
        // bodyMedium: TextStyle(fontSize: 13, color: AppColors.xlBlack),
        // bodySmall: TextStyle(fontSize: 14, color: AppColors.xlBlack),
        // labelLarge: TextStyle(fontSize: 10, color: AppColors.sGrey),
        ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.xlBlack),
      ),
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: AppColors.tabNotSelected,
      unselectedLabelStyle: const TextStyle(color: AppColors.tabNotSelected),
      labelColor: AppColors.mBlue,
      labelStyle: AppTypography.smallSemiBold,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColors.xlBlack,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.xlBlack,
      unselectedItemColor: AppColors.mGrey,
      type: BottomNavigationBarType.fixed,
    ),
    colorScheme: const ColorScheme.light(background: AppColors.white),
  );
}

ThemeData themeDark() {
  return ThemeData.dark().copyWith(
    // primaryColor: Color(0xFF007F80),
    primaryColor: AppColors.white,
    primaryColorDark: const Color(0xFF007F80),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: AppColors.xlBlack),
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: const Color(0xFFD9D9D9),
      titleTextStyle: AppTypography.appBarTitle,
      toolbarTextStyle: AppTypography.appBarTitle,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
        // titleSmall: TextStyle(fontSize: 16, color: AppColors.xlBlack),
        // bodyMedium: TextStyle(fontSize: 13, color: AppColors.xlBlack),
        // bodySmall: TextStyle(fontSize: 14, color: AppColors.xlBlack),
        // labelLarge: TextStyle(fontSize: 10, color: AppColors.sGrey),
        ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.xlBlack),
      ),
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: AppColors.tabNotSelected,
      unselectedLabelStyle: const TextStyle(color: AppColors.tabNotSelected),
      labelColor: AppColors.mBlue,
      labelStyle: AppTypography.smallSemiBold,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColors.xlBlack,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.xlBlack,
      unselectedItemColor: AppColors.mGrey,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
