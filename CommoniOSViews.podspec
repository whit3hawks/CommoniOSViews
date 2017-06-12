#
# Be sure to run `pod lib lint CommoniOSViews.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CommoniOSViews'
  s.version          = '0.1.2'
  s.summary          = 'Common iOS Views'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
CommoniOSViews provides a collection of custom Views for you projects.
                       DESC

  s.homepage         = 'https://github.com/whitehawks/CommoniOSViews'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sharif Khaleel' => 'll.hawk.ll@gmail.com' }
  s.source           = { :git => 'https://github.com/whitehawks/CommoniOSViews.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/whit3hawks'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CommoniOSViews/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CommoniOSViews' => ['CommoniOSViews/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
