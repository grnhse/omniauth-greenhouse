# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-greenhouse'
  spec.version       = '1.3.0'
  spec.authors       = %w(timothy.frey)
  spec.email         = %w(tech@greenhouse.io)
  spec.description   = 'Integrate with Greenhouse with OmniAuth'
  spec.summary       = 'Integrate with Greenhouse with OmniAuth'
  spec.homepage      = 'http://greenhouse.io'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1'
  spec.add_runtime_dependency 'omniauth', '>= 1.3.1', '< 2'
end
