Pod::Spec.new do |spec|

  spec.name         = "NDIWrapper.mac"
  spec.module_name  = "NDIWrapperMac"
  spec.version      = "0.0.2"
  spec.summary      = "NDIWrapperMac 说明."
  spec.description      = <<-DESC
  NDIWrapper long description of the pod here.
  DESC
  
  spec.homepage         = 'https://github.com/STTechnology5652/STNDIWrapperMac'
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "coder" => "coder@gmail.com" }
  spec.macos.deployment_target = '14.0'

  spec.source       = { :git => "https://github.com/STTechnology5652/STNDIWrapperMac.git", :tag => "#{spec.version}" }
  
  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files = 'NDIWrapper/{Public,Private}/**/*.{h,m,mm,c,cpp,swift}'
  # spec.exclude_files = "NDIWrapper/Exclude" #排除文件
  
  spec.project_header_files = 'NDIWrapper/Private/**/*.{h}'
  spec.public_header_files = 'NDIWrapper/Public/**/*.h' #此处放置组件的对外暴漏的头文件
  
  # ――― binary framework/lib ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #spec.vendored_frameworks = 'NDIWrapper/Private/**/*.framework'
  spec.vendored_libraries = 'NDIWrapper/Private/**/*.{a,dylib}'
  
  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # 放置 json,font,jpg,png等资源

  #  spec.resources = ["NDIWrapper/{Public,Private}/**/*.{xib}"]
  #  spec.resource_bundles = {
  #    'NDIWrapper' => ['NDIWrapper/Assets/*.xcassets', "NDIWrapper/{Public,Private}/**/*.{png,jpg,font,json}"]
  #  }
  

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # spec.framework  = "SomeFramework"
   spec.frameworks = "AVFoundation", "GLKit", "CoreGraphics", "Cocoa"
  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"
  
  
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # spec.requires_arc = true

  spec.xcconfig = { "ENABLE_USER_SCRIPT_SANDBOXING" => false }

  # 其他依赖pod
  # spec.dependency "XXXXXXXX"

#   spec.subspec 'WithLoad' do |ss|
#       ss.source_files = 'YKHawkeye/Src/MethodUseTime/**/*{.h,.m}'
#       ss.pod_target_xcconfig = {
#         'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) YKHawkeyeWithLoad'
#       }
#       ss.dependency 'YKHawkeye/Core'
#       ss.vendored_frameworks = 'YKHawkeye/Framework/*.framework'
#     end

# spec.dependency "LJAllBaseModule"
#spec.dependency "STComponentTools/STRouter"
# spec.dependency "STComponentTools/STModuleService" #oc 服务中间件
end
