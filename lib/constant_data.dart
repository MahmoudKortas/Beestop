import 'package:flutter/material.dart';

 

class ConstantData {
  static Color primaryColor = "#a8262a".toColor();
  static Color bgPrimaryColor = "#121212".toColor();
  static Color accentColor = "#FF9800".toColor();
  static Color bgColor = "#F0F4F7".toColor();
  static Color primaryTextColor = "#222B45".toColor();
  static Color textColor = "#4E4E4E".toColor();
  static Color viewColor = "#CCCCCC".toColor();

  static Color cellColor = "#E4E6ED".toColor();
  static Color cellBgColor = "#E4E6ED".toColor();

  static String fontFamily = "SFProText";
  static String assetsPath = "assets/images/";

  static const double avatarRadius = 40;
  static Color disableIconColor = Colors.black;
  static Color mainTextColor = Colors.black;
  static Color shadowColor = ConstantData.primaryColor.withOpacity(0.2);

  static String privacyPolicy = "https://google.com";
 

  static const double padding = 20;
  static String dateFormat = "yyyy-MM-dd";
  static String timeFormat = "hh:mm";

  static Color getOrderColor(String s) {
    if (s.contains("On Delivery")) {
      return "#FFEDCE".toColor();
    } else if (s.contains("Completed")) {
      return primaryColor;
    } else {
      return Colors.red;
    }
  }

 
  static Color getIconColor(String s) {
    if (s.contains("On Delivery")) {
      return accentColor;
    } else {
      return Colors.white;
    }
  }
}

extension ColorExtension on String {
  toColor() {
    var hexColor = replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    if (hexColor.length == 8) {
      return Color(
        int.parse("0x$hexColor"),
      );
    }
  }
}
