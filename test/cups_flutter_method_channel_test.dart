//
// CUPS plugin for Flutter.
//
// Copyright © 2025 by Micharl R Sweet.
//
// Licensed under Apache License v2.0.  See the file "LICENSE" for more
// information.
//

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cups_flutter/cups_flutter_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelCupsFlutter platform = MethodChannelCupsFlutter();
  const MethodChannel channel = MethodChannel('cups_flutter');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
