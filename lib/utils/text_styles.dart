
import 'package:flutter/material.dart';
import 'package:software_testing/utils/app_colors.dart';

TextStyle  CustomTextstyle(
    {double size = 12,
    String fontfamily = 'SF Pro Display',
    bool isLight = false,
    double lineheight = 0,
    FontWeight fontWeight = FontWeight.w800,
    Color? color,
    }) {
  return TextStyle(
    fontFamily: fontfamily,
    color:  color??AppColors.darkbrwon,
    fontSize: size,
    fontWeight: fontWeight,
    height: lineheight / size,
  );
}

TextStyle    bottomDataTextstyle(
    {double size = 12,
    String fontfamily = 'SF Pro Display',
    bool isLight = false,
    double lineheight = 0,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
    }) {
  return TextStyle(
    fontFamily: fontfamily,
    color:  color??AppColors.blackColor,
    fontSize: size,
    fontWeight: fontWeight,
    height: lineheight / size,
  );
}

TextStyle  bottomNavTextStyle(
    {double size = 12,
    String fontfamily = 'SF Pro Display',
    bool isLight = false,
    double lineheight = 0,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
    }) {
  return TextStyle(
    fontFamily: fontfamily,
    color:  color??AppColors.navTextColor,
    fontSize: size,
    fontWeight: fontWeight,
    height: lineheight / size ??14.32,
  );
}
 
