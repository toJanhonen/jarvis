# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jarvis/version', __FILE__)

Gem::Specification.new do |s|
  s.authors         = ['Thomas Janhonen']
  s.email           = ['thomas.janhonen@frantic.com']

  s.description     = %q{stuff made awesome}
  s.summary         = %q{jarvis}

  s.require_paths   = ['lib']

  s.executables     = `git ls-files -- bin/*`.split("\n").map{ |file| File.basename(file) }

  s.files           = `git ls-files`.split("\n")
  s.test_files      = `git ls-files -- suite/*`.split("\n")

  s.name            = 'jarvis'
  s.version         = Jarvis::VERSION
  s.license         = 'CreativeCommons Attribution-ShareAlike 4.0 International'
  s.homepage        = 'http://thomasjanhonen.name/'

  s.add_runtime_dependency('bundler')

  s.add_development_dependency('rake')
  s.add_development_dependency('minitest')

  s.add_development_dependency('pry')
  s.add_development_dependency('pry-remote')
  s.add_development_dependency('pry-state')

  s.add_runtime_dependency('dotenv')
  s.add_runtime_dependency('mongo')

  s.add_development_dependency('coveralls')
end
