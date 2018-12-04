Pod::Spec.new do |s|

  s.name         = "DXTools"
  s.version      = "0.0.1"
  s.summary      = "本地持久化方法的简单封装"

  s.homepage     = "https://github.com/Flum-X/DXTools"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Jerry-DX" => "xfr815113499@126.com" }
  
  s.platform     = :ios
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/Flum-X/DXTools.git", :tag => "0.0.1"}

  s.source_files  = "Tools/*.{h,m}"

  s.requires_arc = true

end
