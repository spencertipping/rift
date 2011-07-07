Rift.const_set :Tree, Class.new do
  include Enumerable
  attr :data, :children, :source

  define_method :initialize do |data, *children, source|
    @data, @children, @source = data, children, source
  end

  define_method :each do |&block|
    @children.each block
    yield self
  end

  define_method "[]".to_sym do |*args|
    @children[*args]
  end
end