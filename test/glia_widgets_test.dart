import 'package:flutter_test/flutter_test.dart';
import 'package:glia_widgets/glia_widgets.dart';
import 'package:glia_widgets/glia_widgets_platform_interface.dart';
import 'package:glia_widgets/glia_widgets_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockGliaWidgetsPlatform 
    with MockPlatformInterfaceMixin
    implements GliaWidgetsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final GliaWidgetsPlatform initialPlatform = GliaWidgetsPlatform.instance;

  test('$MethodChannelGliaWidgets is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelGliaWidgets>());
  });

  test('getPlatformVersion', () async {
    GliaWidgets gliaWidgetsPlugin = GliaWidgets();
    MockGliaWidgetsPlatform fakePlatform = MockGliaWidgetsPlatform();
    GliaWidgetsPlatform.instance = fakePlatform;
  
    expect(await gliaWidgetsPlugin.getPlatformVersion(), '42');
  });
}
