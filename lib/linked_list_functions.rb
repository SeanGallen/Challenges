# A function is a method that doesn't use any instance variables
# So it only works with its arguments, as local variables


# These ones are good to start with:
def list_first(list)
<<<<<<< HEAD
  if list.head.nil?
    nil
  else
    list.head.data
   end

=======
  # Try typing this into pry: show-source -e list.class
  require 'pry'
  binding.pry
>>>>>>> 8d094816603d57572b87e4270b6de1b099e7a845
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
<<<<<<< HEAD
  # Try typing this into pry: show-source Node
  # require "pry"
  # binding.pry
  list.head = Node.new(data, list.head)
  list
=======
 # Try typing this into pry: show-source -e list.class
 require "pry"
 binding.pry
>>>>>>> 8d094816603d57572b87e4270b6de1b099e7a845
end

# Probably a nice intermediate set
<<<<<<< HEAD
def list_size(list)
  i, node = 0, list.head
  while node
    i += 1
    node = node.link
    end
  i
end
def list_each(list, &block) # deleteme
=======

def list_size(list)
>>>>>>> 8d094816603d57572b87e4270b6de1b099e7a845
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
#<<<<<<< HEAD
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

#=======
#>>>>>>> 4f7ac77986bea4983430d108c2ca8f4b66fcf10a
=======
def list_max(list)
end

>>>>>>> 8d094816603d57572b87e4270b6de1b099e7a845

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

def list_insert(list, index, data)
end
<<<<<<< HEAD


__END__
#<<<<<<< HEAD

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
=======
>>>>>>> 8d094816603d57572b87e4270b6de1b099e7a845
