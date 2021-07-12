#
#  Be sure to run `pod spec lint FQUtilsSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "FQUtilsSDK"
  spec.version      = "0.0.1"
  spec.platform     = :ios, '9.0'
  spec.summary      = "iOS开发常用工具类."
  spec.description  = <<-DESC
  iOS开发常用工具类：时间选择器、监听截屏和录屏、指纹和面部识别、关键字高亮、添加水印、截图和Toast
                   DESC

  spec.homepage     = "https://github.com/wuwuFQ/FQUtilsSDK"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author       = { "wuwuFQ" => "133013235631@163.com" }
  spec.source       = { :git => "https://github.com/wuwuFQ/FQUtilsSDK.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = "FQUtilsSDK.framework"
  spec.pod_target_xcconfig = {'VALID_ARCHS' => 'x86_64 armv7 arm64'}

end
