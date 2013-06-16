# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "dxruby"
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["mirichi"]
  s.date = "2013-06-02"
  s.description = "2D game library for Windows with DirectX9"
  s.email = ["sawara01@gmail.com"]
  s.homepage = "http://dxruby.sourceforge.jp/"
  s.licenses = ["zlib/libpng"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = ":-)"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
