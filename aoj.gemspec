# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aoj/version'

Gem::Specification.new do |spec|
  spec.name          = "aoj"
  spec.version       = AOJ::VERSION
  spec.authors       = ["na-o-ys"]
  spec.email         = ["naoyoshi0511@gmail.com"]
  spec.summary       = %q{aoj command-line tool}
  spec.description   = %q{AOJ is a command-line tool for AOJ(Aizu Online Judge). You can submit your source to AOJ and check the result of judgement without opening browser or copy & paste..}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake", "~> 10.4"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_dependency "thor", "~> 0.19"
  spec.add_dependency "activesupport", "~> 4.2"
  spec.add_dependency "oauth", "~> 0.4"
  spec.add_dependency "twitter", "~> 5.14"
end
