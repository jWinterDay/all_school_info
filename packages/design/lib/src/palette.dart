import 'package:flutter/material.dart';

import 'colors.dart';

class Palette {
  Palette({required CustomColors customColors}) {
    primary = customColors.primary;
    primaryLight = customColors.primaryLight;
    primaryDark = customColors.primaryDark;

    primaryLight20 = customColors.primaryLight20;
    primary12 = customColors.primary12;
    primary60 = customColors.primary60;
    primary80 = customColors.primary80;
    primaryDark50 = customColors.primaryDark50;

    white = customColors.white;
    background = customColors.background;
    gray12 = customColors.gray12;
    gray22 = customColors.gray22;
    gray40 = customColors.gray40;
    gray50 = customColors.gray50;
    gray85 = customColors.gray85;
    black = customColors.black;

    warning = customColors.warning;
    accent = customColors.accent;
    danger = customColors.danger;
    startProgress = customColors.startProgress;
    averageProgress = customColors.averageProgress;
    finalProgress = customColors.finalProgress;
  }

  late Color primaryLight;
  late Color primary;
  late Color primaryDark;

  late Color primaryLight20;
  late Color primary12;
  late Color primary60;
  late Color primary80;
  late Color primaryDark50;

  late Color white;
  late Color background;
  late Color gray12;
  late Color gray22;
  late Color gray40;
  late Color gray50;
  late Color gray85;
  late Color black;

  late Color warning;
  late Color accent;
  late Color danger;
  late Color startProgress;
  late Color averageProgress;
  late Color finalProgress;

  static const Color transparent = Colors.transparent;

  static const Color blueColor = Colors.blue;
  static const Color blue300Color = Color(0xFF64B5F6);
  static const Color deepPurpleColor = Colors.deepPurple;
  static const Color pinkColor = Colors.pink;

  static const Color colorFF7F7F7F = Color(0xFF7F7F7F);
  static const Color colorFFE0E0E0 = Color(0xFFE0E0E0);

  static const Color colorFF001B14 = Color(0xFF001B14);
  static const Color colorFF22443B = Color(0xFF22443B);
  static const Color colorFF000E0A = Color(0xFF000E0A);
  static const Color colorFF65471D = Color(0xFF65471D);
  static const Color colorFF33383B = Color(0xFF33383B);
  static const Color colorFF060707 = Color(0xFF060707);
  static const Color colorFF009A6E = Color(0xFF009A6E);

  static const Color colorFFD2D5DB = Color(0xffd2d5db);
  static const Color colorRGB199 = Color.fromRGBO(199, 199, 199, 1);
  static const Color colorFF797979 = Color(0xFF797979);
  static const Color colorFF616161 = Color(0xFF616161);
  static const Color colorRGB50 = Color.fromRGBO(50, 50, 50, 1);
  static const Color colorFFF4F4F4 = Color(0xFFF4F4F4);
  static const Color colorRGB195194194 = Color.fromRGBO(195, 194, 194, 1);
  static const Color colorFFE6E4E4 = Color(0xFFE6E4E4);
  static const Color colorRGB557179 = Color.fromRGBO(55, 71, 79, 1);
  static const Color colorRGB25 = Color.fromRGBO(25, 25, 25, 1);
  static const Color colorFF262626 = Color(0xFF262626);
  static const Color colorFFD8D8D8 = Color(0xFFD8D8D8);
}
