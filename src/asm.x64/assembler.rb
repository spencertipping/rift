# x64 assembler | Spencer Tipping
# Licensed under the terms of the MIT source code license

# Assemblers contain one or many code blocks. The code blocks are then linked
# together and returned as an array of bytes to be written to memory and
# executed.

class Rift::X64::Assembler
  def initialize
    @blocks = {}
  end

  def block name, &body
    @blocks[name] = Block.new &body
    self
  end
end
