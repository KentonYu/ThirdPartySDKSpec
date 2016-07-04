Pod::Spec.new do |s|
  s.name         = "ThirdPartySDKSpec"
  s.version      = "0.1.1"
  s.summary      = "管理第三方服务 SDK 的 Pods"
  s.homepage     = "https://github.com/KentonYu/ThirdPartySDKSpec"
  s.license      = "MIT"
  s.author       = { "KentonYu" => "yukai_bo@163.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/KentonYu/ThirdPartySDKSpec.git", :tag => "#{s.version}" }
  s.requires_arc = 'true'
  
  s.subspec 'Alipay' do |sub|
  sub.source_files  = 'Alipay/AlipaySDK.framework/Headers/*.{h,m}'
  sub.vendored_frameworks = 'Alipay/AlipaySDK.framework'
  # sub.public_header_files = 'Alipay/AlipaySDK.framework/Headers/*.h'
  sub.resource  = "Alipay/AlipaySDK.bundle"
  sub.framework  = "SystemConfiguration"
  end
  
  s.subspec 'Weibo' do |sub|
  sub.source_files = 'Weibo/*.{h.m}'
  sub.vendored_libraries = 'Weibo/libWeiboSDK.a'
  # sub.public_header_files = 'Weibo/*.h'
  sub.resource  = 'Weibo/WeiboSDK.bundle'
  sub.framework  = 'ImageIO', 'SystemConfiguration', 'CoreText', 'QuartzCore', 'Security', 'UIKit', 'Foundation', 'CoreGraphics','CoreTelephony'
  end
  
end
