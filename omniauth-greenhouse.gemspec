# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-greenhouse'
  spec.version       = '1.3.2'
  spec.authors       = %w(Greenhouse Software)
  spec.email         = %w(tech@greenhouse.io)
  spec.description   = 'Integrate with Greenhouse with OmniAuth'
  spec.summary       = 'Integrate with Greenhouse with OmniAuth'
  spec.homepage      = "https://github.com/grnhse/omniauth-greenhouse"
  spec.license       = 'MIT'

  spec.post_install_message = %q{
    omniauth-greenhouse will be removed from Rubygems.org on Friday, April 3, 2026.
    Please install using a direct link to the Github repo:
    
    gem "omniauth-greenhouse", git: "git@github.com:grnhse/omniauth-greenhouse.git", branch: "master"
  }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1'
  spec.add_runtime_dependency 'omniauth', '>= 1.3.1', '< 2'
end
