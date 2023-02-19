import 'package:flutter/material.dart';

 

class ConstantWidget {
  static double getPercentSize(double total, double percent) {
    return (total * percent) / 100;
  }

  static Widget getHorizonSpace(double space) {
    return SizedBox(
      width: space,
    );
  }

  static double largeTextSize = 28;
 

 
 
  static double getHeaderSize(BuildContext context) {
    return ConstantWidget.getScreenPercentSize(context, 3);
  }

  static double getSubTitleSize(BuildContext context) {
    return ConstantWidget.getScreenPercentSize(context, 2);
  }

  static double getActionTextSize(BuildContext context) {
    return ConstantWidget.getScreenPercentSize(context, 1.8);
  }

  static double getDefaultDialogPadding(BuildContext context) {
    return ConstantWidget.getScreenPercentSize(context, 2);
  }

  static double getDefaultDialogRadius(BuildContext context) {
    return ConstantWidget.getScreenPercentSize(context, 1);
  }

  static double getScreenPercentSize(BuildContext context, double percent) {
    return (MediaQuery.of(context).size.height * percent) / 100;
  }

  static double getWidthPercentSize(BuildContext context, double percent) {
    return (MediaQuery.of(context).size.width * percent) / 100;
  }

  static Widget getSpace(double space) {
    return SizedBox(
      height: space,
    );
  }

  
  
}
