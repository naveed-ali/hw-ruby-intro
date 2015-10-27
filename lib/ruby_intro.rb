# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  unless arr.empty?
    arr.inject { |total, n| total + n }
  else
    0
  end
end

def max_2_sum arr
  sorted_arr = arr.sort
  if arr.empty?
    0
  elsif arr.length == 1
    sorted_arr[0]
  else
    sorted_arr[-1] + sorted_arr[-2]
  end
end

def sum_to_n? arr, n
  found = false
  
  if arr.length > 1
    i = 0
    
    while !found && i < arr.length
      j = i + 1

      while !found && j < arr.length
        if arr[i] + arr[j] == n
          found = true
        end
        
        j += 1
      end

      i += 1
    end
  end
  
  found
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[^\Waeiou]/i
end

def binary_multiple_of_4? s
  s =~ /^[0|1]+$/ and s =~ /00{0,1}$/
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
