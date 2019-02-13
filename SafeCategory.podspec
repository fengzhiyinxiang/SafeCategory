#
#  Be sure to run `pod spec lint SafeCategory.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SafeCategory"
  s.version      = "0.0.1"
  s.license      = 'MIT'
  s.summary      = "SafeCategory Project"
  s.platform     = "ios"
  s.ios.deployment_target = "8.0"
  s.description  = <<-DESC
    SafeCategory Project SafeCategory Project
                   DESC

  s.homepage     = "https://github.com/fengzhiyinxiang/SafeCategory"
  s.license      = "MIT"
  s.author             = { "QF" => "fengzhiyinxiang@foxmail.com" }
  s.source       = { :git => "https://github.com/fengzhiyinxiang/SafeCategory.git", :tag => "#{s.version}" }
  s.source_files  = "SafeCategory"
  s.exclude_files = "Classes/Exclude"
  s.frameworks = "Foundation", "UIKit"

end
