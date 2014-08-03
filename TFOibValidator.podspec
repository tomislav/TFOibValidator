Pod::Spec.new do |s|
  s.name     = 'TFOibValidator'
  s.version  = '1.0.0'
  s.license  = { :type => "BSD", :file => "LICENSE" }
  s.summary  = 'Croatian personal identification number (OIB) validator for REValidation'
  s.homepage = 'https://github.com/tomislav/TFOibValidator'
  s.authors  = { 'Tomislav Filipcic' => 'tomislav@7sols.com' }
  s.source   = { :git => 'https://github.com/tomislav/TFOibValidator.git', :tag => "1.0.0" }
  s.requires_arc = true
  s.source_files = 'TFOibValidator/*.{h,m}'
  s.ios.deployment_target = '5.0'
  s.dependency 'REValidation'
end
