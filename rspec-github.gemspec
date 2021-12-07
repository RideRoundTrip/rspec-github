# frozen_string_literal: true

require_relative 'lib/rspec/github/version'

Gem::Specification.new do |spec|
  spec.name          = 'rspec-github'
  spec.version       = RSpec::Github::VERSION
  spec.authors       = ['Roundtrip']
  spec.email         = ['eng@roundtriphealth.com']

  spec.summary       = 'Formatter for RSpec to show errors in GitHub action annotations'
  spec.description   = 'Formatter for RSpec to show errors in GitHub action annotations'
  spec.homepage      = 'https://github.com/RideRoundtrip/rspec-github'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.7.0')

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir['{lib}/**/*']

  spec.add_runtime_dependency 'rspec-core', '~> 3.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.23.0'
  spec.add_development_dependency 'rubocop-ast', '~> 1.14.0'
end
