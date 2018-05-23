Pod::Spec.new do |s|
  s.name         = "react-native-exit-app"
  s.version      = "1.0.0"
  s.summary      = "Exit,close,kill,shutdown app completely for React Native on iOS and Android."
  s.description  = <<-DESC
                  Exit,close,kill,shutdown app completely for React Native on iOS and Android.
                   DESC
  s.homepage     = "https://github.com/wumke/react-native-exit-app"
  s.license      = "GPLv3"
  s.author       = { "wumke" => "info@watchwimswork.be" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/wumke/react-native-exit-app.git", :tag => "master" }
  s.source_files = "ios/RNExitApp/*.{h,m}"
  s.requires_arc = true
end