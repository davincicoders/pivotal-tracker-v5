# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
# require 'version'

Gem::Specification.new do |spec|
  spec.name          = "pivotal-tracker-v5"
  spec.version       = "0.0.1"
  spec.authors       = ["David Bayendor"]
  spec.email         = ["dbayendor@gmail.com"]
  spec.description   = "This is a Ruby wrapper for the Pivotal Tracker v5 API. To learn more about the gem, visit ______, to learn more about the API, visit http://www.pivotaltracker/com/URL/TO/V5/API"
  spec.summary       = ["Ruby wrapper for the Pivotal Tracker v5 API"]
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock", "~> 1.11.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "debugger"
  spec.add_development_dependency "ruby_gntp"
  spec.add_dependency "httparty"
end
