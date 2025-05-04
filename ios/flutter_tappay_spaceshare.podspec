Pod::Spec.new do |s|
  s.name             = 'flutter_tappay_spaceshare'
  s.version          = '0.0.1'
  s.summary          = 'A federated Flutter plugin for TapPay integration.'
  s.homepage         = 'https://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'SpaceShare' => 'support@example.com' }
  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency       'Flutter'
  # s.dependency       'TPDirect' # Uncomment to add TapPay iOS SDK
  s.public_header_files = 'Classes/**/*.h'
end