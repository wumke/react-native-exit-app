require 'json'

packageJson = JSON.parse(File.read('package.json'))
version = packageJson["version"]
description = packageJson["description"]
homepage = packageJson["homepage"]
license = packageJson["license"]
author = packageJson["author"]
repository = packageJson["repository"]["url"]
iqVersion = version.split('-').first

Pod::Spec.new do |s|
	s.name           = "RNExitApp"
	s.version        = version
	s.description    = description
	s.homepage       = homepage
	s.summary        = "Exit,close,kill,shutdown app completely for React Native"
	s.license        = license
	s.authors        = author
	s.source         = { :git => repository, :tag => version }
	s.platforms      = { :ios => "9.0", :tvos => "11.0" }
	s.preserve_paths = 'README.md', 'package.json', '*.js'
	s.source_files   = 'ios/RNExitApp/**/*.{h,m}'

	s.dependency 'React-Core'
  
	# Don't install the dependencies when we run `pod install` in the old architecture.
	if ENV["RCT_NEW_ARCH_ENABLED"] == "1"
	  s.compiler_flags = folly_compiler_flags + " -DRCT_NEW_ARCH_ENABLED=1"
	  s.pod_target_xcconfig    = {
		"HEADER_SEARCH_PATHS" => "\"$(PODS_ROOT)/boost\"",
		"OTHER_CPLUSPLUSFLAGS" => "-DFOLLY_NO_CONFIG -DFOLLY_MOBILE=1 -DFOLLY_USE_LIBCPP=1",
		"CLANG_CXX_LANGUAGE_STANDARD" => "c++17"
	  }
  
	  s.dependency "React-Codegen"
	  s.dependency "React-RCTFabric"
	  s.dependency "RCT-Folly"
	  s.dependency "RCTRequired"
	  s.dependency "RCTTypeSafety"
	  s.dependency "ReactCommon/turbomodule/core"
	end
end
