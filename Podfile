# Uncomment this line to define a global platform for your project
platform :ios, '8.0'
#use_frameworks!
inhibit_all_warnings!

def shared_pods
  pod 'AFNetworking', '~> 3.0.3'
  pod 'ReactiveCocoa', '~> 2.5'
  pod 'MSWeakTimer', '~> 1.1.0'
  pod 'Masonry', '~> 1.0.1'
  pod 'FMDB', '~> 2.6.2'
  pod 'RegexKitLite', '~> 4.0'
  pod 'FCUUID', '~> 1.2.0'
  pod 'CocoaLumberjack'
  pod 'UICKeyChainStore'
  pod 'SSKeychain'
  
  pod 'MQTTClient', '~> 0.8.7'
  pod 'MJExtension', '~> 3.0.13'
  pod 'BlocksKit', '~> 2.2.5'
  pod 'SDWebImage', '~> 4.0.0'
  pod 'JKCategories', '~> 1.5'
  pod 'RealReachability', '~> 1.1.8'
  pod 'UITableView+FDTemplateLayoutCell', '~> 1.5.beta'
  pod 'WMPageController', '~> 2.2.1'
  
  pod 'JSONModel', '~> 1.0.1'
  
  pod 'DACircularProgress', '~> 2.3.1'
  pod 'SWRevealViewController', '~> 2.3.0'
  pod 'SCRecorder', '~> 2.7.0'
  pod 'GPUImage', '~> 0.1.7'
  pod 'PINCache', '~> 3.0.1-beta.4'
end

target 'Trip' do
  shared_pods
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
    end
end

