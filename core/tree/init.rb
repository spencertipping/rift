Rift.const_set :Tree, Class.new Struct.new(:operation, :children, :source) do
  include Enumerable
  extend  Extensible

  define_method :each do |&block|
    block.call self
    @children.each &block
    self
  end
end