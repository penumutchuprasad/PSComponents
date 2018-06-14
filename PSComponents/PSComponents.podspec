
Pod::Spec.new do |s|

  s.name          = "PSComponents"
  s.version       = "1.0.1"
  s.summary       = "Makes IOS Development fast"
  s.description   = "It gives many custom components and simple system customised APIs"
  s.homepage      = "https://github.com/penumutchuprasad/PSComponents"
  s.license       = "MIT"
  s.author        = { "LEELA_PRASAD" => "penumutchu.prasad@gmail.com" }
  s.platform      = :ios, '11.0'
  s.source       = { :git => "https://github.com/penumutchuprasad/PSComponents", :branch => "master", :tag => "v1.0.1" }
 # s.source       = { :git => "https://github.com/penumutchuprasad/PSComponents", :tag => "1.0.1" }
  s.source_files  = "PSComponents/**/*.{swift}"
  s.framework     = "UIKit"
  s.swift_version = "4.0"
#s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
end
