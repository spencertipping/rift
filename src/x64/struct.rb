# x64 assembly-level struct definition | Spencer Tipping
# Licensed under the terms of the MIT source code license

# A struct whose fields are aligned on 64-bit boundaries. It knows how to map
# names to offsets, which keeps the code much more readable and maintainable.
class Rift::X64::Struct
  def initialize *fields
    @fields = {}
    @size   = 0
    fields.flatten.each {|x| self << x}
  end

  def << field
    offset = @size
    singleton_class.class_eval do
      define_method field.to_sym {offset}
    end
    @size += 8
    self
  end
end
