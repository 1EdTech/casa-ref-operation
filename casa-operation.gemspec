Gem::Specification.new do |s|

  s.name        = 'casa-operation'
  s.version     = '0.1.0'
  s.summary     = 'Support for the reference implementation of operations used by the CASA Protocol modules'
  s.authors     = ['Eric Bollens']
  s.email       = ['ebollens@ucla.edu']
  s.homepage    = 'http://imsglobal.github.io/casa'
  s.license     = 'Apache-2.0'

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_development_dependency 'rake'
  s.add_development_dependency 'coveralls'

end
