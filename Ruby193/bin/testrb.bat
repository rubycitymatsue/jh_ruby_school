@echo off
@if not "%~d0" == "~d0" goto WinNT
c:\temp\Ruby193\bin\ruby -x "c:/temp/Ruby193/bin/testrb.bat" %1 %2 %3 %4 %5 %6 %7 %8 %9
@goto endofruby
:WinNT
"%~dp0ruby" -x "%~f0" %*
@goto endofruby
#!c:/temp/Ruby193/bin/ruby
require 'test/unit'
tests = Test::Unit::AutoRunner.new(true)
tests.options.banner.sub!(/\[options\]/, '\& tests...')
unless tests.process_args(ARGV)
  abort tests.options.banner
end
files = tests.to_run
$0 = files.size == 1 ? File.basename(files[0]) : files.to_s
exit tests.run
__END__
:endofruby
