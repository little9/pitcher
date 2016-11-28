# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pitcher/version'
Gem::Specification.new do |spec|
  spec.name          = "pitcher"
  spec.version       = Pitcher::VERSION
  spec.authors       = ["Jamie Little"]
  spec.email         = ["jamielittle@outlook.com"]
  spec.summary       = "CLI utility to work with CONTENTdm's Catcher API"
  spec.homepage      = ""
  spec.license       = "BSD-3-Clause"

  spec.files = Dir['lib/**/*.rb']
  spec.executables   = ["pitcher"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10"
  spec.add_runtime_dependency "savon" 
end
