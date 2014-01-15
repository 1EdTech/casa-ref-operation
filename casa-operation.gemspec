Gem::Specification.new do |s|

  s.name        = 'casa-operation'
  s.version     = '0.0.01'
  s.summary     = 'Support for the reference implementation of operations used by the CASA Protocol modules'
  s.authors     = ['Eric Bollens']
  s.email       = ['ebollens@ucla.edu']
  s.homepage    = 'https://appsharing.github.io/casa-protocol'
  s.license     = 'BSD-3-Clause'

  s.files       = ['lib/casa/operation/strategy.rb']

  s.add_development_dependency 'rake'

end