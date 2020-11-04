import 'dart:async';

import 'package:flutter/services.dart';

class Freedom {
  static const MethodChannel _channel = const MethodChannel('freedom');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
