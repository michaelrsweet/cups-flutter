//
// CUPS plugin for Flutter.
//
// Copyright © 2025 by Micharl R Sweet.
//
// Licensed under Apache License v2.0.  See the file "LICENSE" for more
// information.
//


import 'cups_flutter_platform_interface.dart';

class CupsFlutter {
  Future<String?> getPlatformVersion() {
    return CupsFlutterPlatform.instance.getPlatformVersion();
  }
}
