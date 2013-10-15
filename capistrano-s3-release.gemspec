# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/s3/release/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-s3-release"
  spec.version       = Capistrano::S3::Release::VERSION
  spec.authors       = ["Stephen Bartlett"]
  spec.email         = ["stephenb@rtlett.org"]
  spec.description   = %q{Capistrano 3 task to release your deployment artifact to Amazon S3.}
  spec.summary       = %q{Capistrano 3 task to release your deployment artifact to Amazon S3.}
  spec.homepage      = "https://github.com/srbartlett/capistrano-s3-release"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
