#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'foobar'
  gem.homepage           = 'https://github.com/artob/foobar'
  gem.license            = 'Unlicense'
  gem.summary            = 'TODO: Gem summary goes here.'
  gem.description        = 'TODO: Gem description goes here.'

  gem.author             = 'Arto Bendiken'
  gem.email              = 'arto@bendiken.net'

  gem.metadata = {
    'bug_tracker_uri'   => 'https://github.com/artob/foobar/issues',
    'changelog_uri'     => 'https://github.com/artob/foobar/blob/master/CHANGES.rst',
    'documentation_uri' => 'https://www.rubydoc.info/github/artob/foobar/master',
    'homepage_uri'      => gem.homepage,
    #'mailing_list_uri'  => '',
    'source_code_uri'   => 'https://github.com/artob/foobar',
    'wiki_uri'          => 'https://github.com/artob/foobar/wiki',
  }

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS CREDITS.rst README UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()

  gem.required_ruby_version      = '>= 2.5.1'          # Ubuntu 18.04 LTS
  gem.required_rubygems_version  = '>= 2.7.6'          # Ruby 2.5.1
  gem.requirements               = []
  gem.add_development_dependency 'rake',   '>= 12.3.1' # Ruby 2.5.1
  gem.add_development_dependency 'rspec',  '>= 3.8'
  gem.add_development_dependency 'yard' ,  '>= 0.9'
  gem.add_runtime_dependency     'drylib'
  gem.post_install_message       = nil
end
