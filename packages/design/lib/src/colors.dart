import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomColors {
  CustomColors({
    required this.primaryLight,
    required this.primary,
    required this.primaryDark,
    required this.primaryLight20,
    required this.primary12,
    required this.primary60,
    required this.primary80,
    required this.primaryDark50,
    required this.white,
    required this.background,
    required this.gray12,
    required this.gray22,
    required this.gray40,
    required this.gray50,
    required this.gray85,
    required this.black,
    required this.black2,
    required this.accent,
    required this.warning,
    required this.danger,
    required this.dangerLight,
    required this.startProgress,
    required this.averageProgress,
    required this.finalProgress,
    required this.dullOrange,
  });

  final Color primaryLight;
  final Color primary;
  final Color primaryDark;
  final Color primaryLight20;
  final Color primary12;
  final Color primary60;
  final Color primary80;
  final Color primaryDark50;
  final Color white;
  final Color background;
  final Color gray12;
  final Color gray22;
  final Color gray40;
  final Color gray50;
  final Color gray85;
  final Color black;
  final Color black2;
  final Color warning;
  final Color accent;
  final Color danger;
  final Color dangerLight;
  final Color startProgress;
  final Color averageProgress;
  final Color finalProgress;
  final Color dullOrange;
  final Color transparent = Colors.transparent;

  static Future<CustomColors?> loadAsync(String path) async {
    final String colorsStr = await rootBundle.loadString(path);

    final CustomColors? colors = CustomColors.fromJson(colorsStr);

    return colors;
  }

  static CustomColors fromMap(Map<String, dynamic> map) {
    return CustomColors(
      primaryLight: map['primaryLight'].toString().toColor()!,
      primary: map['primary'].toString().toColor()!,
      primaryDark: map['primaryDark'].toString().toColor()!,
      primaryLight20: map['primaryLight20'].toString().toColor()!,
      primary12: map['primary12'].toString().toColor()!,
      primary60: map['primary60'].toString().toColor()!,
      primary80: map['primary80'].toString().toColor()!,
      primaryDark50: map['primaryDark50'].toString().toColor()!,
      white: map['white'].toString().toColor()!,
      background: map['background'].toString().toColor()!,
      gray12: map['gray12'].toString().toColor()!,
      gray22: map['gray22'].toString().toColor()!,
      gray40: map['gray40'].toString().toColor()!,
      gray50: map['gray50'].toString().toColor()!,
      gray85: map['gray85'].toString().toColor()!,
      black: map['black'].toString().toColor()!,
      black2: map['black2'].toString().toColor()!,
      warning: map['warning'].toString().toColor()!,
      accent: map['accent'].toString().toColor()!,
      danger: map['danger'].toString().toColor()!,
      dangerLight: map['dangerLight'].toString().toColor()!,
      startProgress: map['startProgress'].toString().toColor()!,
      averageProgress: map['averageProgress'].toString().toColor()!,
      finalProgress: map['finalProgress'].toString().toColor()!,
      dullOrange: map['dullOrange'].toString().toColor()!,
    );
  }

  String toJson(Object value) => json.encode(value);

  static CustomColors? fromJson(String source) {
    final Map<String, dynamic> baseMap = jsonDecode(source) as Map<String, dynamic>;
    final Map<String, dynamic> colorMap = baseMap['colors'] as Map<String, dynamic>;

    return CustomColors.fromMap(colorMap);
  }
}

extension MapStringToColor on String {
  Color? toColor() {
    String stringValue = this.toString();

    if (stringValue.length == 6) {
      stringValue = 'FF$stringValue';
    }
    if (stringValue.length > 16) {}
    if (stringValue.length != 8) return null;

    try {
      return Color(int.parse(stringValue, radix: 16));
    } catch (_) {
      return null;
    }
  }
}

extension ColorExtentions on Color {
  Color darken([int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    final double diff = 1 - percent / 100;
    return Color.fromARGB(
      this.alpha,
      (this.red * diff).round(),
      (this.green * diff).round(),
      (this.blue * diff).round(),
    );
  }

  Color brighten([int percent = 10]) {
    assert(1 <= percent && percent <= 100);
    final double diff = percent / 100;
    return Color.fromARGB(
      this.alpha,
      this.red + ((255 - this.red) * diff).round(),
      this.green + ((255 - this.green) * diff).round(),
      this.blue + ((255 - this.blue) * diff).round(),
    );
  }

  String colorCode() {
    const int startIndex = 10;
    const int endIndex = 16;

    return this.toString().substring(startIndex, endIndex);
  }
}
