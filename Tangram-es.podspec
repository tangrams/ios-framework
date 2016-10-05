Pod::Spec.new do |s|

  s.name    = 'Tangram-es'
  s.version = '0.1.0'

  s.summary           = 'Open source C++ library for rendering 2D and 3D maps from vector data using OpenGL ES.'
  s.description       = 'Open source C++ library for rendering 2D and 3D maps from vector data using OpenGL ES, wrapped with native Cocoa Touch APIs.'
  s.homepage          = 'https://mapzen.com/products/tangram/'
  s.license           = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author            = { 'Mapzen' => 'ios-support@mapzen.com' }
  s.social_media_url  = 'https://twitter.com/mapzen'
  s.documentation_url = 'https://mapzen.com/documentation/tangram/'

  s.source = {
    :path => "."
  }

  s.platform              = :ios
  s.ios.deployment_target = '9.0'

  s.requires_arc = true

  s.vendored_frameworks = 'tangram_framework.framework'
  s.module_name = 'tangram_framework'

end
