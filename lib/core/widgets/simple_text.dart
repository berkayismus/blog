import 'package:flutter/material.dart';

/// Temaya entegre ve tekrar kullanılabilir bir metin widget'ı.
///
/// Varsayılan olarak `AppTextStyles` içinde tanımlanan stilleri kullanır.
/// Gerekirse renk, hizalama ve maksimum satır gibi özellikler override edilebilir.
class SimpleText extends StatelessWidget {
  const SimpleText({
    super.key,
    required this.text,
    this.style,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  /// Görüntülenecek metin.
  final String text;

  /// Metnin stili (AppTextStyles'dan alınabilir).
  final TextStyle? style;

  /// Metnin rengi. Varsayılan stilin rengini override eder.
  final Color? color;

  /// Metnin hizalaması.
  final TextAlign? textAlign;

  /// Metnin maksimum satır sayısı.
  final int? maxLines;

  /// Maksimum satır sayısını aşan metinler için taşma davranışı.
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    // Eğer dışarıdan bir renk belirtilirse, stilin rengini onunla değiştir.
    final finalStyle = color != null ? style?.copyWith(color: color) : style;

    return Text(
      text,
      style: finalStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
