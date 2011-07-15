# x64 register definitions | Spencer Tipping
# Licensed under the terms of the MIT source code license

# This provides register definitions for AssemblyBlock instances.

module Rift::X64::RegisterDefinitions
  def self.register name, index
    define_method name {index}
  end

  register :rax, 0
  register :rcx, 1
  register :rdx, 2
  register :rbx, 3

  register :rsp, 4
  register :rbp, 5
  register :rsi, 6
  register :rdi, 7

  register :r8,  8
  register :r9,  9
  register :r10, 10
  register :r11, 11
  register :r12, 12
  register :r13, 13
  register :r14, 14
  register :r15, 15

  8.times do |i|
    register "xmm#{i}".to_sym, i
  end
end

Rift::X64::AssemblyBlock.include RegisterDefinitions
