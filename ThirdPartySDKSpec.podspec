Pod::Spec.new do |s|
  s.name         = "ThirdPartySDKSpec"
  s.version      = "0.1.0"
  s.summary      = "管理第三方服务 SDK 的 Pods"
  s.homepage     = "https://github.com/KentonYu/ThirdPartySDKSpec"
  s.license      = "MIT"
  s.author             = { "KentonYu" => "yukai_bo@163.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/KentonYu/ThirdPartySDKSpec.git", :tag => "#{s.version}" }

  
  s.subspec 'Alipay' do |sub|
  s.source_files  = 'Alipay'
  sub.vendored_frameworks = 'AlipaySDK.framework'
  sub.public_header_files = 'AlipaySDK.framework/Headers/**/*.h'
  sub.resource  = "AlipaySDK.bundle"
  sub.framework  = "SystemConfiguration"
  end
  


  # 
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


end
