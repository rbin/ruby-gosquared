# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gosquared/version'

Gem::Specification.new do |spec|
  spec.name          = 'gosquared'
  spec.version       = GoSquared::VERSION
  spec.authors       = ['rbin']
  spec.email         = ['me@rbin.co']
  spec.summary       = 'GoSquared Ruby Gem'
  spec.description   = 'Interact with the GoSquared API in native Ruby.'
  spec.homepage      = 'http://github.com/rbin/ruby-gosquared'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rest-client'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-nc'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'bundler', '~> 1.6'
end
