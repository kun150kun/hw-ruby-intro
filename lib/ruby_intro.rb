# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  largest = arr.max(2)
  return largest.sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.length > 1 and arr.combination(2).any?{|x, y| x+y == n}
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  !!(s =~ /^[a-z&&[^aeiou]]/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s =~ /^([01]*00|0)$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    valid_isbn(isbn)
    valid_price(price)
    @isbn = isbn
    @price = price
  end
  
  def isbn()
    @isbn
  end
  
  def price()
    @price
  end
  
  def isbn=(isbn)
    valid_isbn(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    valid_price(price)
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
  
  def valid_isbn(isbn)
    if isbn == ""
      raise ArgumentError.new "isbn can not be emtpy!"
    end
  end
  
  def valid_price(price)
    if price <= 0
      raise ArgumentError.new "price should be positive number"
    end
  end
end
