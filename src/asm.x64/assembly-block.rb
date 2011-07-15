# x64 assembly-level basic block | Spencer Tipping
# Licensed under the terms of the MIT source code license

# These are created and linked together by Rift::X64::Assembler instances.
# Generally you won't instantiate one of these directly.

class Rift::X64::AssemblyBlock < Array
  def initialize
    # Jump targets map from symbols to offsets. The idea is that when a symbol
    # is resolved, we replace the four bytes at and after the offset with the
    # relative displacement. See 'bind()' for more info.
    @jump_targets = {}
  end

  def ref name
    (@jump_targets[name] ||= []) << size
    self << 0 << 0 << 0 << 0
  end

  def bind name, offset
    @jump_targets[name].each do |x|
      # Little-endian offset encoding.
      self[x]     = offset       & 0xff
      self[x + 1] = offset >> 8  & 0xff
      self[x + 2] = offset >> 16 & 0xff
      self[x + 3] = offset >> 24 & 0xff
    end
  end
end
