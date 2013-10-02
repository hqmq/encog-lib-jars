# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'encog/lib/jars/version'

Gem::Specification.new do |spec|
  spec.name          = "encog-lib-jars"
  spec.version       = Encog::Lib::Jars::VERSION
  spec.platform      = "java"
  spec.authors       = ["Michael Ries"]
  spec.email         = ["michael@riesd.com"]
  spec.description   = "A grem that just holds the encog java core lib jar. This jar comes from https://github.com/encog/encog-java-core."
  spec.homepage      = "https://github.com/hqmq/encog-lib-jars"
  spec.license       = "APACHE-2"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
