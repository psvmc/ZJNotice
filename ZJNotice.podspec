Pod::Spec.new do |s|
  s.name         = "ZJNotice"
  s.version      = "1.4"
  s.summary      = "A Simple AlertView"
  s.description  = <<-EOS
  A Simple AlertView
  EOS
  s.homepage     = "https://github.com/psvmc/ZJNotice"
  s.license      = { :type => "MIT", :file => "License" }
  s.author      = { "psvmc" => "183518918@qq.com" }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/psvmc/ZJNotice.git", :tag => s.version }
  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "ZJNoticeDemo/Lib/ZJNotice/*.swift"
    ss.framework  = "UIKit"
  end
end
