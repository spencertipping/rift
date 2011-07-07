Rift.const_set :Extensible, Module.new do
  define_method :extensible_subclass do |name, &initializer|
    child = Class.new self, &initializer
    const_set name, child
    self
  end
end