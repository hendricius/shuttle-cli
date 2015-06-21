# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shuttle_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "shuttle_cli"
  spec.version       = ShuttleCli::VERSION
  spec.authors       = ["Hendrik Kleinwaechter"]
  spec.email         = ["hendrik.kleinwaechter@gmail.com"]
  spec.summary       = %q{Command line interface for the Mac Shuttle SSH Client}
  spec.description   = %q{For people who work in the Terminal. This provides a command line interface with all your SSH bookmarks.}
  spec.homepage      = "http://github.com/hendricius/shuttle-cli"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "terminal-table", "~> 1.4"
  spec.add_runtime_dependency "json", "~>1.8"
  spec.add_runtime_dependency "activesupport", "~>4.1"
  spec.add_runtime_dependency "i18n", "~>0.6"
  spec.add_runtime_dependency "tzinfo", "~>1.1"
  spec.add_runtime_dependency "minitest", "~>5.1"
  spec.add_runtime_dependency "thread_safe", "~>0.3"
  spec.add_development_dependency "bundler", '~>1.7'
  spec.add_development_dependency "rake", "~>10.3"
  spec.add_development_dependency "pry", "~>0.10"

end
