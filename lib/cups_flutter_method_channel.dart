//
// CUPS plugin for Flutter.
//
// Copyright © 2025 by Micharl R Sweet.
//
// Licensed under Apache License v2.0.  See the file "LICENSE" for more
// information.
//

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'cups_flutter_platform_interface.dart';

/// An implementation of [CupsFlutterPlatform] that uses method channels.
class MethodChannelCupsFlutter extends CupsFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('cups_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
