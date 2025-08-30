import 'package:flutter/material.dart';

import 'app_colors.dart'; // Renkleri kullanmak için

class AppTextStyles {
  // Açık Tema Başlıkları
  static const TextStyle appBarTitleLight = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle displayLargeLight = TextStyle(
    fontSize: 57,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle displayMediumLight = TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle displaySmallLight = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle headlineLargeLight = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle headlineMediumLight = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle headlineSmallLight = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  // Açık Tema Vücut Metinleri
  static const TextStyle bodyLargeLight = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle bodyMediumLight = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle bodySmallLight = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundLight,
  );

  // Etiket Metinleri
  static const TextStyle labelLargeLight = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle labelMediumLight = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: AppColors.onBackgroundLight,
  );

  static const TextStyle labelSmallLight = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: AppColors.onBackgroundLight,
  );

  // Buton Metinleri
  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: AppColors.onPrimary,
  );

  // Koyu Tema Stilleri (isteğe bağlı)
  // ... Bu kısma, app_theme.dart dosyasında darkTheme için kullandığın stilleri ekleyebilirsin.
  // Örneğin:
  static const TextStyle bodyLargeDark = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.onBackgroundDark,
  );

  // İhtiyaçlarına göre diğer stilleri buraya ekleyebilirsin.
}
