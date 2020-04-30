# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'thermite/tasks'

RSpec::Core::RakeTask.new(:spec)
Thermite::Tasks.new

task default: :spec

desc 'Code Quality Check'
task :lint do
  puts
  puts 'Quality check starting...'
  sh 'rubocop'
  puts
end

desc 'Run Rust & Ruby testsuites'
task test: ['thermite:build', 'thermite:test', 'lint', 'spec'] do
end
