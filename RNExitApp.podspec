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

	s.dependency 'React'
end
