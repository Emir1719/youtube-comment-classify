import 'package:flutter/material.dart';

/// Singleton deseni uygulanmış renk sınıfı
final class AppColorScheme {
  static final _instance = AppColorScheme._();
  AppColorScheme._();
  factory AppColorScheme() => _instance;

  static ColorScheme get light => ColorScheme.light(
        /// Ana renk
        primary: Colors.deepOrange,

        /// Ana renk üzerindeki görünecek renk
        onPrimary: Colors.white,

        /// Sayfaların arka plan rengi
        surface: const Color(0xffF8F9FA),

        /// Metin rengi
        onSurface: Colors.black,

        /// Şeffaf arka plan rengi
        surfaceTint: Colors.transparent,

        /// Icon vb. rengi
        outline: Colors.blue,

        /// Gölge rengi
        shadow: Colors.grey,

        /// Container gibi widget'ların rengi
        primaryContainer: Colors.white,
        surfaceContainerLowest: Colors.grey.shade200,
        surfaceContainerLow: Colors.grey.shade300,
        surfaceContainerHigh: Colors.grey.shade500,
        surfaceContainerHighest: Colors.grey.shade800,

        /// Hata rengi
        error: Colors.red,
      );

  static ColorScheme get dark => ColorScheme.dark(
        /// Ana renk
        primary: Colors.deepOrange,

        /// Ana renk üzerindeki görünecek renk
        onPrimary: Colors.white,

        /// Sayfaların arka plan rengi
        surface: Colors.grey.shade900,

        /// Metin rengi
        onSurface: Colors.white,

        /// Şeffaf arka plan rengi
        surfaceTint: Colors.transparent,

        /// Icon vb. rengi
        outline: Colors.blueGrey.shade200,

        /// Gölge rengi
        shadow: Colors.black,

        /// Container gibi widget'ların rengi
        primaryContainer: const Color(0xff121212),
        surfaceContainerLowest: Colors.grey.shade800,
        surfaceContainerLow: Colors.grey.shade700,
        surfaceContainerHigh: Colors.grey.shade500,
        surfaceContainerHighest: Colors.grey.shade400,

        /// Hata rengi
        error: Colors.red.shade300,
      );
}
