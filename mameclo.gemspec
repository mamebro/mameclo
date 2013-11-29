# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mameclo/version'

Gem::Specification.new do |spec|
  spec.name          = "mameclo"
  spec.version       = Mameclo::VERSION
  spec.authors       = ["Yuta Kurotaki"]
  spec.email         = ["yuta.kurotaki@gmail.com"]
  spec.description   = %q{command line tool for www.mameblo.com}
  spec.summary       = %q{Simple client tool for mameblo}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'thor'
  spec.add_dependency 'faraday'
  spec.add_dependency 'json'
end
