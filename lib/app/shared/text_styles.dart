import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextSize {
  static double xxxSmall = 8.0;
  static double xxSmall = 10.0;
  static double xSmall = 12.0;
  static double small = 14.0;
  static double medium = 16.0;
  static double large = 18.0;
  static double xLarge = 20.0;
  static double xxLarge = 22.0;
  static double xxxLarge = 24.0;
  static double big = 30.0;
  static double xBig = 32.0;
  static double xxBig = 34.0;
  static double xxxBig = 36.0;
  static double profileSize = 55.0;
}

class TextStyles {
  static TextStyle appBarTitle({Color? textColor, double? size}) {
    return GoogleFonts.lato(
        fontSize: size ?? TextSize.medium,
        color: textColor ?? Colors.black,
        fontWeight: FontWeight.w700);
  }

  static TextStyle paragraph(
    double size, {
    FontWeight? weight,
    Color? color,
    double? lineHeight,
    bool isLink = false,
  }) {
    return GoogleFonts.lato(
        decoration: isLink ? TextDecoration.underline : TextDecoration.none,
        fontSize: size,
        height: lineHeight ?? 1.010,
        color: color ?? Colors.black,
        fontWeight: weight ?? FontWeight.normal);
  }
}

class DeviceHeightPortrait {
  static const iphone44S = 480.0;
  static const iphone55S5CSE = 568.0;
  static const iphone66S78SE2 = 667.0;
  static const iphone6P6SP7P8P = 736.0;
  static const iphone12Mini = 812.0;
  static const iphoneXXS11Pro = 812.0;
  static const iphoneXR11 = 896.0;
  static const iphone1212Pro = 844.0;
  static const iphoneXSMax11ProMax = 896.0;
  static const iphone12ProMax = 926.0;
}

class DeviceWidthPortrait {
  static const iphone44S = 320.0;
  static const iphone55S5CSE = 320.0;
  static const iphone66S78SE2 = 375.0;
  static const iphone6P6SP7P8P = 414.0;
  static const iphone12Mini = 375.0;
  static const iphoneXXS11Pro = 375.0;
  static const iphoneXR11 = 414.0;
  static const iphone1212Pro = 390.0;
  static const iphoneXSMax11ProMax = 414.0;
  static const iphone12ProMax = 428.0;
}

class DeviceHeightLandscape {
  static const iphone44S = 320.0;
  static const iphone55S5CSE = 320.0;
  static const iphone66S78SE2 = 375.0;
  static const iphone6P6SP7P8P = 414.0;
  static const iphone12Mini = 375.0;
  static const iphoneXXS11Pro = 375.0;
  static const iphoneXR11 = 414.0;
  static const iphone1212Pro = 390.0;
  static const iphoneXSMax11ProMax = 414.0;
  static const iphone12ProMax = 428.0;
}

class DeviceWidthLandscape {
  static const iphone44S = 480.0;
  static const iphone55S5CSE = 568.0;
  static const iphone66S78SE2 = 667.0;
  static const iphone6P6SP7P8P = 736.0;
  static const iphone12Mini = 812.0;
  static const iphoneXXS11Pro = 812.0;
  static const iphoneXR11 = 896.0;
  static const iphone1212Pro = 844.0;
  static const iphoneXSMax11ProMax = 896.0;
  static const iphone12ProMax = 926.0;
}
