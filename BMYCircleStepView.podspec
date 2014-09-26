Pod::Spec.new do |s|
  s.name     = 'BMYCircleStepView'
  s.version  = '1.0.0'
  s.platform = :ios, '5.0'
  s.summary  = 'Simple view showing the steps of a flow as used in the Beamly iOS app.'
  s.description = 'Simple view showing the steps of a flow as used in the Beamly iOS app.'
  s.homepage = 'https://github.com/beamly/BMYCircleStepView'
  s.author   = { 'Alberto De Bortoli' => 'alberto@beamly.com', 'Stefan Dougan-Hyde' => 'stefan@beamly.com' }
  s.source   = { :git => 'https://github.com/beamly/BMYCircleStepView.git', :tag => '1.0.0' }
  s.license      = { :type => 'New BSD License', :file => 'LICENSE.md' }
  s.source_files = ['BMYCircleStepView/*.{h,m}']
  s.requires_arc = true
end
