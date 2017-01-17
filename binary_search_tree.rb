class BST

attr_accessor :data, :left, :right

def initialize(thing)
  self.data = thing 
  self.left = nil
  self.right = nil
end

def insert(new_data, node = self)
    case true
    when new_data < node.data && node.left == nil
      node.left = BST.new(new_data)
    when new_data > node.data && node.right == nil
      node.right = BST.new(new_data)
    when new_data < node.data
      self.insert(new_data, node.left)
    when new_data > node.data
      self.insert(new_data, node.right)
    else
      node.left = BST.new(new_data)
    end
  end
  def each(&block)
    left.each(&block) if left
    block.call(data)
    right.each(&block) if right
  end


# def insert(next_one, node = self)
#   if node.data > next_one && node.left = nil
#       node.left = BST.new(next_one)
#   elsif node.data < next_one && node.right = nil 
#       node.right = BST.new(next_one)
#   end 

#   if node.data > next_one
#     self.insert(next_one, node.left)
#   elsif node.data < next_one
#     self.insert(next_one, node.right)
#   end 
# end

# def each

# end

end