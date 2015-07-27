#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'foobar'
  gem.homepage           = 'https://github.com/bendiken/foobar'
  gem.license            = 'Public Domain' if gem.respond_to?(:license=)
  gem.summary            = 'TODO: Gem summary goes here.'
  gem.description        = 'TODO: Gem description goes here.'

  gem.author             = 'Arto Bendiken'
  gem.email              = 'arto@bendiken.net'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CREDITS README UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 2.0'
  gem.required_rubygems_version  = '>= 2.0'
  gem.requirements               = []
  gem.add_development_dependency 'rake',  '>= 10.4'
  gem.add_development_dependency 'rspec', '>= 3.3'
  gem.add_development_dependency 'yard' , '>= 0.8.7.6'
  gem.post_install_message       = nil
end
