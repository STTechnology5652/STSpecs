#
#  Be sure to run `pod spec lint STModuleComponent.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the s.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/pods.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

# ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  These will help people to find your library, and whilst it
#  can feel like a chore to fill in it's definitely to your advantage. The
#  summary should be tweet-length, and the description more in depth.
#

s.name         = "STModuleComponent"
s.version      = "0.0.2"
s.summary      = "组件化工程中间组件."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
s.description  = <<-DESC
提供：服务，路由，app生命周期托管功能；
包含三个子组件：STRouter, STService, STAppLife;
以及一个基础组件：STAnnotation。
DESC

s.homepage     = "https://github.com/STTechnology5652/STModuleComponent.git"
# s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


# ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Licensing your code is important. See https://choosealicense.com for more info.
#  CocoaPods will detect a license file if there is a named LICENSE*
#  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
#

s.license      = "MIT"
# s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


# ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the authors of the library, with email addresses. Email addresses
#  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
#  accepts just a name if you'd rather not provide an email address.
#
#  Specify a social_media_url where others can refer to, for example a twitter
#  profile URL.
#

s.author             = { "stephen.chen" => "stephen5652@126.com" }
# s.social_media_url   = "https://twitter.com/stephen.chen"

# ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If this Pod runs only on iOS or OS X, then specify the platform and
#  the deployment target. You can optionally include the target after the platform.
#

# s.platform     = :ios
s.platform     = :ios, "9.0"
s.swift_version = '5.0'

#  When using multiple platforms
# s.ios.deployment_target = "5.0"
# s.osx.deployment_target = "10.7"
# s.watchos.deployment_target = "2.0"
# s.tvos.deployment_target = "9.0"


# ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Specify the location from where the source should be retrieved.
#  Supports git, hg, bzr, svn and HTTP.
#

s.source = { :git => "https://github.com/STTechnology5652/STModuleComponent.git", :tag => "#{s.version}" }


# ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  CocoaPods is smart about how it includes source code. For source files
#  giving a folder will include any swift, h, m, mm, c & cpp files.
#  For header files it will include any header in the folder.
#  Not including the public_header_files will make all headers public.
#

s.subspec 'STAnnotation' do |ss|
    ss.source_files = "STModuleComponent/STAnnotation/Classes/**/*.{h,m,mm,c,cpp,swift}"
#     ss.exclude_files = "Classes/Exclude"
    ss.public_header_files = "STModuleComponent/STAnnotation/Classes/Public/**/*.h"
#     ss.prefix_header_file = 'STAnnotation/Classes/Private/**/*.pch'
#     ss.resources = "STAnnotation/Assets/*.png"

#     ss.frameworks = "SomeFramework", "AnotherFramework"
#     ss.libraries = "iconv", "xml2"
#     ss.dependency "JSONKit"
end

s.subspec 'STRouter' do |ss|
    ss.source_files = "STModuleComponent/STRouter/Classes/**/*.{h,m,mm,c,cpp,swift}"
#     ss.exclude_files = "Classes/Exclude"
    ss.public_header_files = "STModuleComponent/STRouter/Classes/Public/**/*.h"
#     ss.prefix_header_file = 'STRouter/Classes/Private/**/*.pch'
#     ss.resources = "STRouter/Assets/*.png"

#     ss.frameworks = "SomeFramework", "AnotherFramework"
#     ss.libraries = "iconv", "xml2"
    ss.dependency "STModuleComponent/STAnnotation"
    ss.dependency 'YYModel'
end


s.subspec 'STService' do |ss|
    ss.source_files = "STModuleComponent/STService/Classes/**/*.{h,m,mm,c,cpp,swift}"
#     ss.exclude_files = "Classes/Exclude"
    ss.public_header_files = "STModuleComponent/STService/Classes/Public/**/*.h"
#     ss.prefix_header_file = 'STService/Classes/Private/**/*.pch'
#     ss.resources = "STService/Assets/*.png"

#     ss.frameworks = "SomeFramework", "AnotherFramework"
#     ss.libraries = "iconv", "xml2"
    ss.dependency "STModuleComponent/STAnnotation"
end


s.subspec 'STAppLife' do |ss|
    ss.source_files = "STModuleComponent/STAppLife/Classes/**/*.{h,m,mm,c,cpp,swift}"
#     ss.exclude_files = "Classes/Exclude"
    ss.public_header_files = "STModuleComponent/STAppLife/Classes/Public/**/*.h"
#     ss.prefix_header_file = 'STAppLife/Classes/Private/**/*.pch'
#     ss.resources = "STAppLife/Assets/*.png"

#     ss.frameworks = "SomeFramework", "AnotherFramework"
#     ss.libraries = "iconv", "xml2"
    ss.dependency "STModuleComponent/STAnnotation"
end


# s.source_files  = "Classes", "Classes/**/*.{h,m}"
# s.exclude_files = "Classes/Exclude"

# s.public_header_files = "Classes/**/*.h"
# s.prefix_header_file = 'iphone/include/prefix.pch'


# ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  A list of resources included with the Pod. These are copied into the
#  target bundle with a build phase script. Anything else will be cleaned.
#  You can preserve files from being cleaned, please don't preserve
#  non-essential files like tests, examples and documentation.
#

# s.resource  = "icon.png"
# s.resources = "Resources/*.png"

# s.preserve_paths = "FilesToSave", "MoreFilesToSave"


# ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  Link your library with frameworks, or libraries. Libraries do not include
#  the lib prefix of their name.
#

# s.framework  = "SomeFramework"
# s.frameworks = "SomeFramework", "AnotherFramework"

# s.library   = "iconv"
# s.libraries = "iconv", "xml2"


# ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
#
#  If your library depends on compiler flags you can set them in the xcconfig hash
#  where they will only apply to your library. If you depend on other Podspecs
#  you can include multiple dependencies to ensure it works.

# s.requires_arc = true

# s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
# s.dependency "JSONKit", "~> 1.4"

end
