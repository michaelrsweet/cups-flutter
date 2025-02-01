import 'package:flutter_test/flutter_test.dart';
import 'package:cups_flutter/cups_flutter.dart';
import 'package:cups_flutter/cups_flutter_platform_interface.dart';
import 'package:cups_flutter/cups_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCupsFlutterPlatform
    with MockPlatformInterfaceMixin
    implements CupsFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CupsFlutterPlatform initialPlatform = CupsFlutterPlatform.instance;

  test('$MethodChannelCupsFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCupsFlutter>());
  });

  test('getPlatformVersion', () async {
    CupsFlutter cupsFlutterPlugin = CupsFlutter();
    MockCupsFlutterPlatform fakePlatform = MockCupsFlutterPlatform();
    CupsFlutterPlatform.instance = fakePlatform;

    expect(await cupsFlutterPlugin.getPlatformVersion(), '42');
  });
}
