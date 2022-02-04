import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

import 'constants.dart';

class Utils {
  // REQUEST HEADERS
  static String deviceId = '';
  static String appVersion = '';
  static String appLanguage = '';

  static EdgeInsets getPaddingDefault({double? left, double? top, double? right, double? bottom}) {
    return EdgeInsets.fromLTRB(left ?? 20.0, top ?? 10.0, right ?? 20.0, bottom ?? 10.0);
  }

  static Future<void> getUUID() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
      deviceId = iosDeviceInfo.identifierForVendor; // unique ID on iOS
    } else {
      final AndroidDeviceInfo androidDeviceInfo = await deviceInfo.androidInfo;
      deviceId = androidDeviceInfo.androidId; // unique ID on Android
    }
  }

  static Future<void> getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final String version = packageInfo.version;
    final String buildNumber = packageInfo.buildNumber;
    appVersion = '$version.$buildNumber';
  }

  static Size displaySize(BuildContext context) {
    kLogger.d('Size = ${MediaQuery.of(context).size}');
    return MediaQuery.of(context).size;
  }

  static double displayHeight(BuildContext context,
      {double dividedBy = 1, double reducedBy = 0.0}) {
    kLogger.d('Height = ${displaySize(context).height}');
    return (displaySize(context).height - reducedBy) / dividedBy;
  }

  static double displayWidth(BuildContext context, {double dividedBy = 1, double reducedBy = 0.0}) {
    kLogger.d('Width = ${displaySize(context).width}');
    return (displaySize(context).width - reducedBy) / dividedBy;
  }
}
