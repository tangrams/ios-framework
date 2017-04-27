Pod::Spec.new do |s|

  s.name    = 'Tangram-es'
  s.version = '0.6.2'

  s.summary           = 'Open source C++ library for rendering 2D and 3D maps from vector data using OpenGL ES.'
  s.description       = 'Open source C++ library for rendering 2D and 3D maps from vector data using OpenGL ES, wrapped with native Cocoa Touch APIs.'
  s.homepage          = 'https://mapzen.com/products/tangram/'
  s.license           = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author            = { 'Mapzen' => 'ios-support@mapzen.com' }
  s.social_media_url  = 'https://twitter.com/mapzen'
  s.documentation_url = 'https://mapzen.com/documentation/tangram/ios-framework/0.6.1/'

  s.source = {
    :git => 'https://github.com/tangrams/ios-framework.git', :tag => "v#{s.version}"
  }

  s.platform              = :ios
  s.ios.deployment_target = '9.3'

  s.requires_arc = true

  s.vendored_frameworks = 'TangramMap.framework'
  s.module_name = 'TangramMap'

end
