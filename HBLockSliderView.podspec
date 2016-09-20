
Pod::Spec.new do |spec|
  spec.name         = "HBLockSliderView"
  spec.version      = “1.0.0”
  spec.summary      = "Beautiful Slider View. Written in Objective-C "
  spec.homepage     = "https://github.com/SimonDeCft/HBLockSliderView"

  spec.license            = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { “Simon_yhb” => “yehuangbin@hotmail.com” }
  spec.social_media_url   = "http://www.jianshu.com/users/eeee1e6c8663/latest_articles"
  spec.platform           = :ios
  spec.ios.deployment_target = ‘7.0’
  spec.source             = { :git => "https://github.com/SimonDeCft/HBLockSliderView.git", :tag => spec.version.to_s }
  spec.source_files       = "HBLockSliderView/*"
  spec.requires_arc       = true
end