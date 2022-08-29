#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint glia_widgets.podspec` to validate before publishing.
#


Pod::Spec.new do |s|
  s.name             = 'glia_widgets'
  s.version          = '0.0.1'
  s.summary          = 'The Glia Widgets Flutter plugin'
  s.description      = <<-DESC
The Glia Widgets library allows to integrate easily a UI/UX for Glia\'s Digital Customer Service platform
                       DESC
  s.homepage         = 'https://github.com/salemove/ios-sdk-widgets'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
  s.dependency 'GliaWidgets', '0.9.4'
end
