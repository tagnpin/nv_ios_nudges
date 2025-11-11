#
#  Be sure to run `pod spec lint notifyvisitorsNudgespec.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "notifyvisitorsNudges"
  spec.version      = "0.0.3"
  spec.summary      = "notifyvisitors framework for Nudges"
  spec.description  = <<-DESC
  NotifyVisitors Nudges sdk to use our in-app nudges. This SDK must be usd with our notifyvisitors ios SDK.
                   DESC

  spec.homepage     =  'https://github.com/tagnpin/nv_ios_nudges'
  spec.license          = { :type => 'MIT', :file => 'LICENSE' }
  spec.author           = { 'Mohammad Ashraf Ali' => 'ashraf@notifyvisitorspec.com' }
  spec.source           = { :git => 'https://github.com/tagnpin/nv_ios_nudges.git', :tag => spec.version.to_s }

  # spec.source_files = 'notifyvisitorsNudges/Classes/**/*'
  spec.platform         = :ios
  spec.ios.deployment_target = '12.0'
  spec.requires_arc     = true
  spec.preserve_path    = 'notifyvisitorsNudges.xcframework'
  spec.vendored_frameworks = 'notifyvisitorsNudges.xcframework'
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.swift_version = '5.0'

end
