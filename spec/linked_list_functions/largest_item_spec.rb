require 'linked_list_functions/challenges'

RSpec.describe 'linked list functions' do
  describe 'largest_item' do
    it 'returns nil for the empty list' do
      list = LinkedList.new
      assert_equal nil, largest_item(list)
    end

    it 'returns the first item when there is only one' do
      list = LinkedList.new(Node.new("a", nil))
      assert_equal "a", largest_item(list)
    end

    describe 'returns the item that is less than the others, when there is more than one' do
      example '("a" -> "b" -> "c") returns "c"' do
        list = LinkedList.new(Node.new("a", Node.new("b", Node.new("c", nil))))
        assert_equal "c", largest_item(list)
      end

      example '("a" -> "c" -> "b") returns "c"' do
        list = LinkedList.new Node.new("a", Node.new("c", Node.new("b", nil)))
        assert_equal "c", largest_item(list)
      end

      example '("b" -> "a" -> "c") returns "c"' do
        list = LinkedList.new Node.new("b", Node.new("a", Node.new("c", nil)))
        assert_equal "c", largest_item(list)
      end

      example '("b" -> "c" -> "a") returns "c"' do
        list = LinkedList.new Node.new("b", Node.new("c", Node.new("a", nil)))
        assert_equal "c", largest_item(list)
      end

      example '("c" -> "b" -> "a") returns "c"' do
        list = LinkedList.new Node.new("c", Node.new("b", Node.new("a", nil)))
        assert_equal "c", largest_item(list)
      end

      example '("c" -> "a" -> "b") returns "c"' do
        list = LinkedList.new Node.new("c", Node.new("a", Node.new("b", nil)))
        assert_equal "c", largest_item(list)
      end

      example '(100 -> 45 -> 300)  returns 300' do
        list = LinkedList.new Node.new(100, Node.new(45, Node.new(300, nil)))
        assert_equal 300, largest_item(list)
      end
    end
  end
end

