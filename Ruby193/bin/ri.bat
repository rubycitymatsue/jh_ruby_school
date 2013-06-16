@echo off
@if not "%~d0" == "~d0" goto WinNT
c:\temp\Ruby193\bin\ruby -x "c:/temp/Ruby193/bin/ri.bat" %1 %2 %3 %4 %5 %6 %7 %8 %9
@goto endofruby
:WinNT
"%~dp0ruby" -x "%~f0" %*
@goto endofruby
#!c:/temp/Ruby193/bin/ruby

begin
  gem 'rdoc'
rescue NameError => e # --disable-gems
  raise unless e.name == :gem
rescue Gem::LoadError
end

require 'rdoc/ri/driver'

RDoc::RI::Driver.run ARGV
__END__
:endofruby
