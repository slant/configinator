# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'configinator/version'

Gem::Specification.new do |gem|
  gem.name          = "configinator"
  gem.version       = Configinator::VERSION
  gem.authors       = ["Ryan L. Cross"]
  gem.email         = ["rcross@cylence.com"]
  gem.description   = %q{Easy app configuration using the Rails config method.}
  gem.summary       = %q{Easy app configuration using the Rails config method.}
  gem.homepage      = "http://github.com/cylence/configinator"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rails', '~> 3.2.8'
end
