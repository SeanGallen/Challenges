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

def yield_with_while_loop(array, &block)
  return [] if array.length == 0
  i = 0
  while i < array.length
    block.call(array[i])
    i += 1
  end
end

def yield_with_each(array, &block)
  if array == []
    nil
  else
    array.each {|i| block.call(i)}
  end
end

def best_advice(array, &block)
end
