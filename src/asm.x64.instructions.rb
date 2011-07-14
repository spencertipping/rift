# x64 instruction encoding | Spencer Tipping
# Licensed under the terms of the MIT source code license

# Low-level instruction streams for x86-64 processors. These are rendered
# as byte arrays that can later be written to files or memory.
class Rift::X64::InstructionAssembler

  # Create a new low-level assembler with an empty instruction stream and no
  # registered labels.
  def initialize
    @stream, @labels, @unbound = [], {}, {}, 0
  end

  def << byte
    @stream << (byte & 0xff)
    self
  end
  private :<<

  def size
    @stream.size
  end

  # Move instruction group.
  # These are separated by case: reg/reg, reg/mem, mem/reg, mem/xmm, etc. The
  # right-hand argument is the destination; that is, 'move X to Y', or AT&T
  # assembler syntax.

  def mov_rr i1, i2
  end
end
