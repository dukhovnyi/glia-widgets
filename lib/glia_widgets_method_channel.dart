import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'glia_widgets_platform_interface.dart';

/// An implementation of [GliaWidgetsPlatform] that uses method channels.
class MethodChannelGliaWidgets extends GliaWidgetsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('glia_widgets');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
