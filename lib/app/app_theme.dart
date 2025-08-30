import 'package:blog/app/constants/app_colors.dart';
import 'package:blog/app/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // Açık (Light) tema
  static ThemeData get lightTheme {
    return ThemeData(
      // Ana renk paleti
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.backgroundLight,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.accent,
        surface: AppColors.surfaceLight,
        error: AppColors.error,
        onPrimary: AppColors.onPrimary,
        onSecondary: AppColors.onAccent,
        onSurface: AppColors.onSurfaceLight,
        onError: AppColors.onError,
      ),

      // AppBar stili
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.backgroundLight,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTextStyles.appBarTitleLight,
        iconTheme: IconThemeData(color: AppColors.onBackgroundLight),
      ),

      // Buton stili
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: AppTextStyles.buttonText,
        ),
      ),

      // TextTheme: Uygulamanın genel metin stilleri
      textTheme: const TextTheme(
        // Başlıklar
        displayLarge: AppTextStyles.displayLargeLight,
        displayMedium: AppTextStyles.displayMediumLight,
        displaySmall: AppTextStyles.displaySmallLight,
        headlineLarge: AppTextStyles.headlineLargeLight,
        headlineMedium: AppTextStyles.headlineMediumLight,
        headlineSmall: AppTextStyles.headlineSmallLight,

        // Vücut metinleri
        bodyLarge: AppTextStyles.bodyLargeLight,
        bodyMedium: AppTextStyles.bodyMediumLight,
        bodySmall: AppTextStyles.bodySmallLight,

        // Diğerleri
        labelLarge: AppTextStyles.labelLargeLight,
        labelMedium: AppTextStyles.labelMediumLight,
        labelSmall: AppTextStyles.labelSmallLight,
      ),
    );
  }

  // Koyu (Dark) tema (isteğe bağlı)
  static ThemeData get darkTheme {
    return ThemeData(
      // Ana renk paleti
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.backgroundDark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.accent,
        surface: AppColors.surfaceDark,
        error: AppColors.error,
        onPrimary: AppColors.onPrimary,
        onSecondary: AppColors.onAccent,
        onSurface: AppColors.onSurfaceDark,
        onError: AppColors.onError,
      ),
      // Diğer tema ayarlarını buraya ekleyebilirsiniz (AppBar, Button vb.)
      // Yukarıdaki lightTheme mantığına göre düzenleyebilirsin.
    );
  }
}
