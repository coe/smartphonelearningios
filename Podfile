# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'CountIndicator' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'Firebase/Core'
  pod 'Firebase/AdMob'
  pod 'SVProgressHUD'

  # Pods for CountIndicator

  target 'CountIndicatorTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'CountIndicatorUITests' do
    inherit! :search_paths
    # Pods for testing
  end

FileUtils.cp_r('Pods/Target Support Files/Pods-CountIndicator/Pods-CountIndicator-acknowledgements.plist', 'CountIndicator/Settings.bundle/Acknowledgements.plist', :remove_destination => true)

end

