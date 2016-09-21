# require 'pry'

class Array

  def my_map
    return to_enum unless block_given?
    output = []
    self.each { |c| output << yield(c)  }
    output
  end
end


a = [1,2,3,4,5,6,6]
b = a.my_map {|x| x+1}
c = a.my_map.reject {|x| x==6}
d = a.my_map(&:to_s).my_map(&:class)
e = a.my_map
# binding.pry
puts "Output\n\tB: #{b}\n\n\tC: #{c}\n\n\tD: #{d}\n\n"
