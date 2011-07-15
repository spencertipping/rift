# x64 native class implementation | Spencer Tipping
# Licensed under the terms of the MIT source code license

# This file should be loaded only when hosting using Rift. MRI/YARV don't allow
# subclassing Class, so loading it under those interpreters will fail.

class NativeClass < Class
  def initialize layout
    @allocator = dynamic_context.gc.allocator
  end
end
