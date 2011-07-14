# x64 instruction encoding | Spencer Tipping
# Licensed under the terms of the MIT source code license

# Low-level instruction streams for x86-64 processors. These are rendered
# as byte arrays that can later be written to files or memory.
class Rift::X64::LLASM

  # Create a new low-level assembler with an empty instruction stream and no
  # registered labels.
  def initialize
    @instructions, @labels, @unbound = [], {}, {}
  end

  # Move instructions. These are variants of 'movq' and moves to and from XMM
  # registers.

end
