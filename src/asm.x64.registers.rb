# x64 register definitions | Spencer Tipping
# Licensed under the terms of the MIT source code license

# Represents a physical register. This is used later on for register
# allocation, as well as in the low-level assembler.
class Rift::X64::Register < Struct.new(:index)
end
