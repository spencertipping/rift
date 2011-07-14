# Rift compiler | Spencer Tipping
# Licensed under the terms of the MIT source code license

# Preliminary definitions.
module Rift
  # Abstract away the 'require' details. This prevents ugly path manipulation
  # from appearing in Rift modules.
  def self.dependencies *xs
    xs.flatten.each do |x|
      dependency x
    end
  end

  def self.dependency filename
    require File.join(File.expand_path(File.dirname(__FILE__)) + '/' + filename)
  end
end

# Include major modules, each one of which has sub-dependencies.
Rift.dependencies %w(
  asm.x64)
