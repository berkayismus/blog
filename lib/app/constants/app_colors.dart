import 'package:flutter/material.dart';

class AppColors {
  // Brand Renkleri
  static const Color primary = Color(0xFF6200EE); // Ana marka rengi
  static const Color accent = Color(0xFF03DAC5); // Vurgu rengi

  // Temel Renkler
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF9E9E9E);
  static const Color error = Color(0xFFB00020); // Hata mesajları için

  // Açık Tema Renkleri
  static const Color backgroundLight = Color(0xFFF5F5F5); // Genel arka plan
  static const Color surfaceLight =
      Color(0xFFFFFFFF); // Kartlar, dialoglar, yüzeyler
  static const Color onPrimary =
      Color(0xFFFFFFFF); // Primary rengin üzerindeki metin/ikon
  static const Color onAccent =
      Color(0xFF000000); // Accent rengin üzerindeki metin/ikon
  static const Color onBackgroundLight =
      Color(0xFF212121); // Arka plan üzerindeki metin
  static const Color onSurfaceLight =
      Color(0xFF212121); // Yüzeyler üzerindeki metin
  static const Color onError = Color(0xFFFFFFFF); // Hata rengi üzerindeki metin

  // Koyu Tema Renkleri
  static const Color backgroundDark = Color(0xFF121212);
  static const Color surfaceDark = Color(0xFF1E1E1E);
  static const Color onBackgroundDark = Color(0xFFE0E0E0);
  static const Color onSurfaceDark = Color(0xFFE0E0E0);
}
