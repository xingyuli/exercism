class Bst

  include Enumerable

  VERSION = 1

  attr_reader :data, :left, :right

  def initialize(data)
    @data = data
    @left = nil
    @right = nil
  end

  def insert(new_data)
    if new_data <= @data
      insert_data_to_subtree(new_data, :@left)
    else
      insert_data_to_subtree(new_data, :@right)
    end
  end

  def each
    return enum_for(:each) unless block_given?

    access_tree self, &Proc.new
    self
  end

  private

  def insert_data_to_subtree(data, symbol)
    subtree = instance_variable_get(symbol)
    if subtree.nil?
      instance_variable_set(symbol, Bst.new(data))
    else
      subtree.insert(data)
    end
  end

  def access_tree(tree = self)
    access_tree tree.left, &Proc.new unless tree.left.nil?
    yield tree.data
    access_tree tree.right, &Proc.new unless tree.right.nil?
  end

end