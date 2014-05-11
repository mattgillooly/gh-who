# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gh/who/version'

Gem::Specification.new do |spec|
  spec.name          = "gh-who"
  spec.version       = Gh::Who::VERSION
  spec.authors       = ["Matt Gillooly"]
  spec.email         = ["github@mattgillooly.com"]
  spec.summary       = %q{Commandline tool for listing Github users by organization.}
  spec.description   = %q{Use, for example, with Selecta to pipe specfic usernames into another program, perhaps to refer to specific users from a commit message.}
  spec.homepage      = "https://github.com/mattgillooly/gh-who"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
