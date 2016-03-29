# Here's some stuff from when we talked about modules:
#   https://vimeo.com/157849877
#   https://github.com/CodePlatoon/curriculum/blob/c459e95c816da69ea2a9807c0fdd57ab18262830/phase1/iterable_project.md

module MahMod
  module A
    C = 1

  end

  module B
    C = 2
  end

  def self.find_c(mod)
    mod::C
  end
  String= ::String

  Dir = "These aren't the Dirs you're looking for"

  def self.mah_dir
    Dir
  end
  def self.top_dir
    ::Dir
  end

  def self.make_mod(letter)
   mod = Module.new
   mod.const_set(:ARG, letter)
   mod
  end

  class List
    attr_reader :head
    def unshift(data)
      node = Module.new
      node.const_set(:DATA, data)
      node.const_set(:LINK, @head)
      @head = node
    end
  end

end




module MahMixin

  module Equality
    def <(right)
      left = self
      x =  left <=> right
      if left == nil
        raise ArgumentError
      end
      if x  == 0
        false
      elsif #x.positive?
        false
      else
        true
      end
    end

  end
end


