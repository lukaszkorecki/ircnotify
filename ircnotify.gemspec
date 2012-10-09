# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ircnotify/version'

Gem::Specification.new do |gem|
  gem.name          = "ircnotify"
  gem.version       = Ircnotify::VERSION
  gem.authors       = ["Łukasz Korecki"]
  gem.email         = ["lukasz@coffeesounds.com"]
  gem.description   = %q{Send a message to your IRC server/channel straight from the terminal}
  gem.summary       = %q{IRC notifier, useful for automating messages sent by deployment tools or test runners}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency "cinch", ">= 0"
  gem.add_runtime_dependency "trollop", ">= 0"
end
