# x64 register definitions | Spencer Tipping
# Licensed under the terms of the MIT source code license

module Rift::X64
  # Represents a physical register. This is used later on for register
  # allocation.
  class Register < Struct.new(:index)
  end
end
