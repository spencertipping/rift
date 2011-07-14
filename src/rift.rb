# Rift compiler | Spencer Tipping
# Licensed under the terms of the MIT source code license

Rift = Module.new

Rift.singleton_class.instance_eval do
  define_method :dependencies do |*xs|
    xs.flatten.each do |x|
      dependency x
    end
  end

  define_method :dependency do |filename|
    require File.join(File.expand_path(File.dirname(__FILE__)) + '/' + filename)
  end
end

Rift.dependencies %w(asm.x64)
