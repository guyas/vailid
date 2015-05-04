# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vailid/version'

Gem::Specification.new do |spec|
  spec.name          = "vailid"
  spec.version       = Vailid::VERSION
  spec.authors       = ["guyas"]
  spec.email         = ["guy.ashiri@gmail.com"]
  spec.summary       = %q{Validates the correctness of an Israeli id number}
  spec.description   = %q{Checks the integrity of the checksum according to rules. Gem name originates from Valid,IL,id}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end
