# x64 garbage collector | Spencer Tipping
# Licensed under the terms of the MIT source code license

# Rift implements a generational garbage collector that, like many other parts
# of Rift, can operate asynchronously by using cooperative CPS. The idea here
# is that a memory allocation can trigger a partial GC that returns to the code
# and can resume where it left off. This is done internally by setting a global
# GC continuation on the GC structure defined in the dynamic context.

class Rift::X64::GenerationalGC
  extend Rift::X64::NativeClassBacking
end
