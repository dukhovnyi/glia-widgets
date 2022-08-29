import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'glia_widgets_method_channel.dart';

abstract class GliaWidgetsPlatform extends PlatformInterface {
  /// Constructs a GliaWidgetsPlatform.
  GliaWidgetsPlatform() : super(token: _token);

  static final Object _token = Object();

  static GliaWidgetsPlatform _instance = MethodChannelGliaWidgets();

  /// The default instance of [GliaWidgetsPlatform] to use.
  ///
  /// Defaults to [MethodChannelGliaWidgets].
  static GliaWidgetsPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GliaWidgetsPlatform] when
  /// they register themselves.
  static set instance(GliaWidgetsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
