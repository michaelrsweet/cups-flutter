#
# CUPS iOS/macOS plugin for Flutter.
#
# Copyright © 2025 by Micharl R Sweet.
#
# Licensed under Apache License v2.0.  See the file "LICENSE" for more
# information.
#

#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint cups_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'cups_flutter'
  s.version          = '3.0.0'
  s.summary          = 'CUPS Plugin for Flutter.'
  s.description      = <<-DESC
This plugin provides access to some CUPS 3.x APIs and tools from Flutter.
                       DESC
  s.homepage         = 'https://www.msweet.org/'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Michael R Sweet' => 'webmaster@msweet.org' }

  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'

  # If your plugin requires a privacy manifest, for example if it collects user
  # data, update the PrivacyInfo.xcprivacy file to describe your plugin's
  # privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'cups_flutter_privacy' => ['Resources/PrivacyInfo.xcprivacy']}

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'

  s.ios.dependency 'Flutter'
  s.osx.dependency 'FlutterMacOS'
  s.ios.deployment_target = '14.0'
  s.osx.deployment_target = '11.0'
  end
