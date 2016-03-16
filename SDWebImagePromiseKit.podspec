#
# Be sure to run `pod lib lint SDWebImagePromiseKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SDWebImagePromiseKit"
  s.version          = "0.1.0"
  s.summary          = "An SDWebImage extension to use it with PromiseKit"
  s.homepage         = "https://github.com/lammertw/SDWebImagePromiseKit"
  s.license          = 'MIT'
  s.author           = { "Lammert Westerhoff" => "westerhoff@gmail.com" }
  s.source           = { :git => "https://github.com/lammertw/SDWebImagePromiseKit.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/lwesterhoff'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.dependency 'PromiseKit', '~> 3.0'
  s.dependency 'SDWebImage', '~> 3.7'
end
