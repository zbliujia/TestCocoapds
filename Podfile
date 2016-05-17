# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

#link_with 'TestExtension', 'extension'

pod 'AFNetworking', '2.5.1'
pod 'CocoaLumberjack'

pre_install do |installer|
    pod_targets = installer.pod_targets.flat_map do |pod_target|
        (pod_target.name == "AFNetworking" || pod_target.name == "CocoaLumberjack123") ? pod_target.scoped : pod_target
    end
    installer.aggregate_targets.each do |aggregate_target|
        aggregate_target.pod_targets = pod_targets.select do |pod_target|
            pod_target.target_definitions.include?(aggregate_target.target_definition)
        end
    end
end

target 'TestExtension' do
    # Uncomment this line if you're using Swift or would like to use dynamic frameworks
    # use_frameworks!
    
    # Pods for extension
    
end

target 'extension' do
  # Uncomment this line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for extension
end

#post_install do |installer_representation|
#    installer_representation.pods_project.targets.each do |target|
#        puts "=== #{target.name}"
#        if target.name == "AFNetworking"
#            puts "Setting AFNetworking Macro AF_APP_EXTENSIONS so that it doesn't use UIApplication in extension."
#            target.build_configurations.each do |config|
#                puts "Setting AF_APP_EXTENSIONS macro in config: #{config}"
#                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)', 'AF_APP_EXTENSIONS=1']
#            end
#        end
#    end
#end

post_install do |installer_representation|
    installer_representation.pods_project.targets.each do |target|
        if target.name == "AFNetworking-Pods-extension"
            target.build_configurations.each do |config|
                config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= ['$(inherited)', 'AF_APP_EXTENSIONS=1']
            end
        end
    end
end
