# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'demo_api_adapters/version'

Gem::Specification.new do |s|
  s.name          = "demo-api-adapters"
  s.version       = DemoApiAdapters::VERSION
  s.authors       = ["Tim Crowe"]
  s.email         = ["tim@woodpigeon.com"]
  s.description   = "A set of adapters providing easy access to the XXX APIs"
  s.summary       = "Adapters to work with XXX APIs"
  s.homepage      = ""
  s.license       = "MIT"

  s.files         = Dir.glob("lib/**/*") + %w(README.md Rakefile)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_path = 'lib'

  s.add_dependency 'lrucache', '~> 0.1.1'
  s.add_dependency 'rest-client', '~> 1.6.3'  # At least 1.6.3 for redirect limits
  s.add_dependency 'null_logger'
  s.add_dependency 'link_header'
  
  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'webmock', '~> 1.8'
  s.add_development_dependency 'rack'
  s.add_development_dependency 'simplecov', '~> 0.5.4'
  s.add_development_dependency 'simplecov-rcov'
  s.add_development_dependency 'timecop', '~> 0.5.1'

end
