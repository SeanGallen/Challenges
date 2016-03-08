# Solving these first two:
# https://vimeo.com/157505448
def block_to_proc(&block)
  block
end

def wrap(value)
  block_to_proc do
    value

  end
end

# Spec is named call_twice_and_thrice_spec.rb
def call_twice(&block)
  block.call
  block.call
end


def call_thrice(&block)
  3.times do
    block.call
  end
end

def yield_first(array, &block)
  if array.empty?
    nil
  else
    block.call(array[0])
  end
end

def yield_em_all(array, &block)
  until array.empty?
    block.call(array.shift)
  end
end

def yield_two(array, &block)
  until array.empty?
   block.call(array.shift)
   end
end

def yield_three(array, &block)
  until array.empty?
   block.call(array.shift)
   end
end

def yield_four(array, &block)
  until array.empty?
    block.call(array.shift)
  end
end

def yield_five(array, &block)
  until array.empty?
    block.call(array.shift)
  end
end

def yield_six(array, &block)
  until array.empty?
    block.call(array.shift)
  end
end

def yield_seven(array, &block)
  until array.empty?
    block.call(array.shift)
  end
end

def yield_eight(array, &block)
  until array.empty?
    block.call(array.shift)
  end
end

def yield_nine(array, &block)
  until array.empty?
    block.call(array.shift)
  end
end

def yield_ten(array, &block)
  until array.empty?
    block.call(array.shift)
  end
end

# This receives a PrimitiveArray, which is a class I made that only
# has brackets and length, so you'll have to solve it the way you
# would in a language like C, which doesn't have real arrays
def yield_with_while_loop(array, &block)
  return [] if array.length == 0
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

# This receives an ArrayWithOnlyEach, which, you may have guessed,
# only has the each method. Your solution will have to work in terms
# of each :)
def yield_with_each(array, &block)
  if array == []
    nil
  else
    array.each {|i| block.call(i)}
  end
end

def best_advice(array, &block)
  i = 0
  while array[i]
    if block.call(array[i])
      return array[i]
    else
      i += 1
    end
  end
end


def blinked_list_unshift(link, data)
end

# You'll have to figure out how to define aside :)


# If you struggle with any of these, skip to the next one and come back later
class PubSubSimple
  # you'll have to figure out what goes in here :)
end

class OnCount
end

class PubSub
end

class Do
end

def block_and_forth(&block)
end

# this one is pretty similar to block_and_forth, but will require a local variable,
# and passing of a Proc into the block spot (if you don't know how to do this,
# go play with synseer until you see something that probably does it :)
# http://synseer.herokuapp.com/
def block_and_forth_forever(&block)
end
