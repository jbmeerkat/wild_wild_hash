# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wild_wild_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "wild_wild_hash"
  spec.version       = WildWildHash::VERSION
  spec.authors       = ["Alex Klyanchin"]
  spec.email         = ["jetblackmeerkat@gmail.com"]
  spec.description   = %q{Awesome hash improvement}
  spec.summary       = %q{Awesome hash improvement}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
