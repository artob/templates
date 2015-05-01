#!/usr/bin/env ruby -rubygems
require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'yard'
require 'yard/rake/yardoc_task'

GEMSPEC = Gem::Specification.load(Dir.glob('*.gemspec').first)

$:.unshift(File.expand_path('lib', __dir__))
require GEMSPEC.name

RSpec::Core::RakeTask.new do |t|
  t.pattern = 'spec/**/*_spec.rb'
  t.ruby_opts = %w[-w]
  t.verbose = false
end

YARD::Rake::YardocTask.new do |t|
  t.options += ['--title', "%s %s: %s" %
    [GEMSPEC.name, GEMSPEC.version, GEMSPEC.summary.chomp('.')]]
end

task :default => :spec

task :irb do require 'irb'; ARGV.clear; IRB.start end
