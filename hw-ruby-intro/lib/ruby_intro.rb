# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr = [0] if (arr.nil? || arr.empty?)
  arr.reduce(:+)
end

def max_2_sum arr
  sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  arr = [0] if (arr.nil? || arr.empty?)
  arr.combination(2).any? { |a,b| (a+b) == n } 
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  s.is_a?(String) && s.match(/^[0-1]+$/)!= nil && s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError.new ("ISBN is an empty string") if isbn.empty?
    raise ArgumentError.new ("Price is less than or equal to 0") if ( price <= 0 )
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$#{"%0.2f" % @price}"
  end
end
