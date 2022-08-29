
import 'glia_widgets_platform_interface.dart';

class GliaWidgets {
  Future<String?> getPlatformVersion() {
    return GliaWidgetsPlatform.instance.getPlatformVersion();
  }
}
