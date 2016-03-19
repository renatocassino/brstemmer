# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brstemmer/version'

Gem::Specification.new do |spec|
  spec.name          = "brstemmer"
  spec.version       = Brstemmer::VERSION
  spec.authors       = ["Tacnoman"]
  spec.email         = ["renatocassino@gmail.com"]

  spec.summary       = %q{Helper to make a stemmer algorithm in pt-BR.}
  spec.description   = %q{Stemmer algorithm in pt-BR}
  spec.homepage      = "https://github.com/tacnoman/brstemmer.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
