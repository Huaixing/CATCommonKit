Pod::Spec.new do |s|
  s.name             = 'CATCommonKit'
  s.version          = '0.1.6'
  s.summary          = 'common kit'
  s.description      = <<-DESC
common kit and class
                       DESC
  s.homepage         = 'https://github.com/Huaixing/CATCommonKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Huaixing' => 'shxwork@163.com' }
  s.source           = { :git => 'https://github.com/Huaixing/CATCommonKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'CATCommonKit/Classes/**/*'
end
