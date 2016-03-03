# A function is a method that doesn't use any instance variables
# So it only works with its arguments, as local variables


# These ones are good to start with:
def list_first(list)
  if list.head.nil?
    nil
  else
    list.head.data
   end

end

def list_shift(list)
  if list.head and list.head.data
    data = list.head.data
    list.head = list.head.link
  else
    nil
  end
  data
end

def list_unshift(list, data)
  # Try typing this into pry: show-source Node
  # require "pry"
  # binding.pry
  list.head = Node.new(data, list.head)
  list
end


# Probably a nice intermediate set
def list_size(list)
  i, node = 0, list.head
  while node
    i += 1
    node = node.link
    end
  i
end
   # return i if !node
   # i += 1
   # node = node.link
   # return i if !node
   # i += 1
   # return i if !node
   # i += 1
   # i
# end

  # if list.head
  #   i = 1
  #     if list.head.link
  #       i += 1
  #       if list.head.link.link
  #         i += 1
  #       end
  #     end
  #   i
  # else
  #   0
  # end
#end

    # node = list.head
   # nodes =  node.link
  # node.list = lis
    # nodes.each do |x|
    #   y = x.head
    #   y.data
    #   i += 1
    # end
    # i
  # else
    # 0
  # end
# end
  # if list.head.nil?
  #   0
  # elsif list.head
  #   larger = list.head.link
  #   1
  # elsif larger
  #   largest = larger.link
  #   2
  # else
  #   3
  # end
def list_each(list, &block) # deleteme
end

def list_last(list)
  node = list.head
  return nil if node.nil?
    while node.link
     node = node.link
      if node.link
        node = node.link
        if node.link
          return node.data
        end
        return node.data
      end
      return node.data
    end
    node.data
end
def list_min(list)
  node = list.head
  return nil if node.nil?

  min = node.data
  while node
    data = node.data
    min = data if data < min
    node = node.link
  end
  min
end

<<<<<<< HEAD
def list_max(list)
  node = list.head
  return nil if node.nil?

  min = node.data
  while node
    data = node.data
    min = data if data > min
    node = node.link
  end
  min
end

=======
>>>>>>> 4f7ac77986bea4983430d108c2ca8f4b66fcf10a

# These ones are harder
def list_at(list, index)
   index, i, node = 0, 0, list.head
    while node
      i += 1
      node = node.link
    end
  return nil if node.nil? || index = i
  if index = 0
    node = node.link
    node.data
  elsif index =1 and node.data
    node = node.link
    node.data
  elsif index = 2 and node.data
    node = node.link
    node.data
  elsif index = 3 and node.data
    node = node.link
    node.data
  else
    nil
  end
end
   # while node
   #   if index = 0 && node.data
   #     node = node.link
   #     if index = 1 && node
   #       return node.data
   #     end
   #   end
   # end

def list_insert(list, index, data)
end
<<<<<<< HEAD

###########

# This method:
def something(list)
  if list.head
    # ...
  else
    0
  end
end

# can also be written like this:

def something(list)
  return 0 if !list.head

  # ...
=======
def node_insert(node, index, data)
>>>>>>> 4f7ac77986bea4983430d108c2ca8f4b66fcf10a
end
