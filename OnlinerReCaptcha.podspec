Pod::Spec.new do |s|
  s.name                   = "OnlinerQAKit"
  s.version                = "1.6.1"
  s.homepage               = "https://github.com/onlinerby/ReCaptcha"
  s.summary                = 'Onliner ReCaptcha for iOS'
  s.author                 = { "Onliner Developers" => "ios@onliner.by" }
  s.social_media_url       = "Onliner Engineering"
  s.ios.deployment_target  = '12.0'
  s.source                 = { :git => "git@github.com:onlinerby/ReCaptcha.git", :tag => s.version.to_s }
  s.swift_version          = '5.3'
  s.framework              = 'UIKit'
  s.default_subspecs       = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'ReCaptcha/Classes/*'
    core.frameworks = 'WebKit'

    core.resource_bundles = {
      'ReCaptcha' => ['ReCaptcha/Assets/**/*']
    }
  end

  s.subspec 'RxSwift' do |rx|
    rx.source_files = 'ReCaptcha/Classes/Rx/**/*'
    rx.dependency 'ReCaptcha/Core'
    rx.dependency 'RxSwift', '~> 6.0'
  end

  s.dependency 'OnlinerDesignKit' 
  s.dependency 'OnlinerDependency'
  s.dependency 'OnlinerWebService'
  s.dependency 'OnlinerKeyValueStorage'
end