# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'

use_frameworks!

def common_pods
  pod 'SnapKit', '~> 5'
  pod 'SwiftFormat/CLI'
  pod 'SwiftGen'
end

target 'Bootstrap' do
  common_pods
end

target 'BootstrapTests' do
  common_pods
  pod 'Quick'
  pod 'Nimble'
end
