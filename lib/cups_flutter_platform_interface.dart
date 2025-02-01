import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'cups_flutter_method_channel.dart';

abstract class CupsFlutterPlatform extends PlatformInterface {
  /// Constructs a CupsFlutterPlatform.
  CupsFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static CupsFlutterPlatform _instance = MethodChannelCupsFlutter();

  /// The default instance of [CupsFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelCupsFlutter].
  static CupsFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CupsFlutterPlatform] when
  /// they register themselves.
  static set instance(CupsFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
