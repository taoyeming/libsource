#
# Be sure to run `pod lib lint DoraemonKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DoraemonKit'
  s.version          = '3.0.2'
  s.summary          = 'A short description of DoraemonKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/taoyeming/DoraemonKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '11702701' => 'taoyeming.tym@alibaba-inc.com' }
  s.source           = { :git => 'https://github.com/taoyeming/DoraemonKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'WithGPS' do |ss|
    ss.source_files = 'DoraemonKit/withGPS/*.{h,m}'
  end
  s.subspec 'WithLoad' do |ss|
    ss.source_files = 'DoraemonKit/withLoad/*.{h,m}'
  end
  s.subspec 'Core' do |ss|
    ss.source_files = 'DoraemonKit/Classes/**/*.{h,m}'
    ss.vendored_library = 'DoraemonKit/Classes/*.a'
    ss.vendored_frameworks = 'DoraemonKit/Framworks/*.framework'
    ss.resource = 'DoraemonKit/Assets/*.bundle'
  end
  
  # s.resource_bundles = {
  #   'DoraemonKit' => ['DoraemonKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
