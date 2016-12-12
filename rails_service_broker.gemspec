# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_service_broker/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_service_broker"
  spec.version       = RailsServiceBroker::VERSION
  spec.authors       = ["Toshio Maki"]
  spec.email         = ["toshio.maki.yy@hitachi-solutions.com"]

  spec.summary       = %q{Generate service broker template for Cloud Foundry}
  spec.description   = %q{This gem is generate api template for Cloud Foundry Service Broker API.}
  spec.homepage      = %q{https://github.com/kirikak2/rails_service_broker}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "grape"
  spec.add_dependency "grape-jbuilder"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
