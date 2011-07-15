# Enhancements to the Module class | Spencer Tipping
# Licensed under the terms of the MIT source code license

# This is loaded only when using MRI or YARV. The Rift standard library already
# includes these extensions, so it is unnecessary to add them in user code.

class Module
  alias extend_without_functional_extension  extend
  alias include_without_functional_extension include

  def extend module_or_function, &block
    return extend_without_functional_extension module_or_function.call(block) if block_given?
    original_extend module_or_function
  end

  def include module_or_function, &block
    return include_without_functional_extension module_or_function.call(block) if block_given?
    original_include module_or_function
  end
end
