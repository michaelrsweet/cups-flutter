
import 'cups_flutter_platform_interface.dart';

class CupsFlutter {
  Future<String?> getPlatformVersion() {
    return CupsFlutterPlatform.instance.getPlatformVersion();
  }
}
