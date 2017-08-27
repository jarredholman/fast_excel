if Gem::Platform.local.os =~ /mingw|mswin/ && Gem::Version.new(RUBY_VERSION) < Gem::Version.new('2.4')
  # windows with ruby version < 2.4
  require 'devkit'
  system('make LOC=-fPIC -C zlib-1.2.11 -fwin32/Makefile.gcc libz.a')
end
