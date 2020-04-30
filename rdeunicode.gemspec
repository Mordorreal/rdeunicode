# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdeunicode/version'

Gem::Specification.new do |spec|
  spec.name          = 'rdeunicode'
  spec.version       = Rdeunicode::VERSION
  spec.authors       = ['Denis Savchuk']
  spec.email         = ['mordorreal@gmail.com']

  spec.summary       = 'Ruby gem that is wrapper for deunicode rust crate'
  spec.description   = %(Rdeunicode is wrapper around deunicode that bring that
    awesome crate to Ruby. Enjoy.)
  spec.homepage      = 'https://github.com/Mordorreal/rdeunicode'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.4.10'

  spec.files = [
    'Cargo.lock', 'Cargo.toml', 'Gemfile', 'LICENSE.txt', 'README.md',
    'bin/console', 'bin/setup', 'Rakefile', 'rdeunicode.gemspec',
    'lib/rdeunicode.rb', 'lib/rdeunicode/version.rb', 'ext/Rakefile',
    'Rakefile', 'lib/rdeunicode/thermite_initialize.rb'
  ]

  spec.files += Dir['src/**/*']
  spec.extensions << 'ext/Rakefile'
  spec.require_paths = ['lib']

  spec.add_dependency 'rutie', '~> 0.0.3'
  spec.add_runtime_dependency 'thermite', '~> 0'
  spec.add_development_dependency 'bundler', '>= 2.0'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.82.0'
end
