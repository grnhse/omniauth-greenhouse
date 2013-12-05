# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'greenhouse/version'

Gem::Specification.new do |spec|
  spec.name          = 'greenhouse'
  spec.version       = Greenhouse::VERSION
  spec.authors       = %w(timothy.frey)
  spec.email         = %w(timothy.frey@greenhouse.io)
  spec.description   = 'Integrate with Greenhouse via OAuth 2.0'
  spec.summary       = 'Integrate with Greenhouse via OAuth 2.0'
  spec.homepage      = 'http://greenhouse.io'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
