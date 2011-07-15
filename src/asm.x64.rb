# Rift x86-64 macro assembler | Spencer Tipping
# Licensed under the terms of the MIT source code license

Rift::X64 = Module.new

Rift.dependencies %w(
  asm.x64.struct
  asm.x64.gc

  asm.x64.structures
  asm.x64.compiler)
