Pod::Spec.new do |s|
  s.name             = 'PusherSwiftC'
  s.version          = '8.0.3'
  s.summary          = 'A Pusher client library in Swift'
  s.homepage         = 'https://github.com/SuaMusica/pusher-websocket-swift'
  s.license          = 'MIT'
  s.author           = { "Pusher Limited" => "support@pusher.com" }
  s.source           = { git: "git://github.com/denislfernandez/pusher-websocket-swift.git", tag: s.version.to_s }
  s.social_media_url = 'https://twitter.com/pusher'

  s.swift_version = '5.0'
  s.requires_arc  = true
  s.source_files  = ['Sources/*.swift', 'Sources/PusherSwift-Only/*.swift']

  s.dependency 'Starscream', '~> 3.1'

  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
end
