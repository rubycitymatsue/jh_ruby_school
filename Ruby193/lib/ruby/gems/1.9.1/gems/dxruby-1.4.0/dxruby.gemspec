# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dxruby'

Gem::Specification.new do |spec|
  spec.name          = "dxruby"
  spec.version       = DXRuby::VERSION
  spec.authors       = ["mirichi"]
  spec.email         = ["sawara01@gmail.com"]
  spec.description   = %q{2D game library for Windows with DirectX9}
  spec.summary       = %q{:-)}
  spec.homepage      = "http://dxruby.sourceforge.jp/"
  spec.license       = "zlib/libpng"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
