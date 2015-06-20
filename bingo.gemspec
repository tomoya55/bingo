# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bingo/version'

Gem::Specification.new do |spec|
  spec.name          = "bingo"
  spec.version       = Bingo::VERSION
  spec.authors       = ["Tomoya Hirano"]
  spec.email         = ["tomoya@nicecabbage.com"]

  spec.summary       = %q{Microsoft Bing Search API Client}
  spec.description   = %q{Bing Search API Client on Windows Azure Marketplace}
  spec.homepage      = "http://github.com/tomoya55/bingo"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "http", "~> 0.8"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
