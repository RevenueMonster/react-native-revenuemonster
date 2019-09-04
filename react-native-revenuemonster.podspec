require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-revenuemonster"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  RevenueMonster
                   DESC
  s.homepage     = "https://github.com/RevenueMonster/react-native-revenuemonster"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/RevenueMonster/react-native-revenuemonster.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*"
  s.requires_arc = true

  s.dependency "React"
  #s.dependency "others"
end

