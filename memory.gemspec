# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memory/version'

Gem::Specification.new do |spec|
  spec.name          = "memory"
  spec.version       = Memory::VERSION
  spec.authors       = ["Horacio Bertorello"]
  spec.email         = ["syrii@msn.com"]
  spec.summary       = %q{Where transient online activity goes.}
  spec.homepage      = "https://github.com/svankmajer/memory"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "redis"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-nav"
end
