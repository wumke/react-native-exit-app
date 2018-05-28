#
#  Be sure to run `pod spec lint RCTPili.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "react-native-exit-app"
  s.version      = "0.1.0"
  s.summary      = "Exit,close,kill,shutdown app completely for React Native on iOS and Android."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                  Exit,close,kill,shutdown app completely for React Native on iOS and Android.
                   DESC

  s.homepage     = "https://github.com/wumke/react-native-exit-app"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "wumke" => "semver.org" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/wumke/react-native-exit-app.git", :tag => "master" }
  s.source_files  = "ios/RNExitApp/*.{h,m}"
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  s.dependency 'React'

end