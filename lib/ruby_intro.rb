# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # sum method on array.default argument being "init=0", return 0 on empty input.
  # direct method call of arr.sum
  s = 0
  if arr.length == 0
    return s
  else
    arr.each{ |x| s+=x}
    return s
  end
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1 # use else if would cause trouble
    return arr[0]
  else
    # sort, then slice the last two elements, then call sum method.
    return arr.sort[-2..-1].sum
  end
end

def sum_to_n? arr, n
  if arr.length <= 1
    return false
  else
    for i in (0...arr.length)
      for j in (i+1...arr.length)
        if arr[i] == n - arr[j]; return true; end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  result = "Hello, #{name}"
  return result
end

def starts_with_consonant? s
  if s == '' # handle empty string
    return false
  elsif (s=~/^\w/) == 0 # handle string starting with letter
    return (s =~ /^(?![aeiou]).*$/i) == 0 # match string starting with char other than [aeiou]
  else # string starting with nonletter
    return false
  end
end

def binary_multiple_of_4? s
  if s == '' # handle empty string
    return false
  elsif (s =~ /[^01]/) == 0 # string contains other than binary char 0 or 1
    return false
  else
    return s.to_i(2) % 4 == 0 # convert string from base 2 binary to int, then return true for multiple of 4
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    raise ArgumentError, 'isbn empty string' unless @isbn.length!=0
    raise ArgumentError, 'price less than zero' unless Integer(@price)>0
  end 
  
  def isbn # isbn getter
    @isbn
  end
  
  def isbn=(isbn) # isbn setter
    @isbn = isbn
  end
  
  def price # price getter
    @price
  end
  
  def price=(price) # price setter
    @price = price
  end
  
  def price_as_string
    "$%0.2f" % [price]
  end
  
end
