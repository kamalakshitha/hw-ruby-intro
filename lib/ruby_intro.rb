# When done, submit this entire file to the autograder.


# Part 1

def sum array

  # kamalakshitha
  
  Integer s = 0
  
  array.each do |i| 
    s = s + i
  end
  return s
end

def max_2_sum array
  
  Integer s = 0;
return 0 if array.empty?
  if array.length == 1
    s =  array[0]
  elsif array.length > 0
    array = array.sort
    len = array.length-1
    s = array[len]+array[len-1]
  end
  return s
end

def sum_to_n? array, n
  
  result = false
  if array.length > 1
    first = 0
    last = array.length - 1
    array = array.sort
    while first < last do
      if array[first] + array[last] > n
        last = last-1
      elsif array[first] + array[last] < n
        first = first + 1
      else
        result = true
        break
      end
    end
  end
  return result
end


# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  return s.match(/\A(?=[^aeiouAEIOU])(?=[a-zA-Z])/i)
end

def binary_multiple_of_4? s
  return s.match(/\A(([10]*00)|(0{1}))\Z/)
end


# Part 3

class BookInStock
  def initialize(isbn,price)
    if(isbn==''||price <= 0)
      raise ArgumentError, 'Invalid arguements'
    end
    @isbn = isbn
    @price = price
  end
  def price
    @price
  end
  def price=  (p)
    @price = p
  end
  def isbn
    @isbn
  end
  def isbn=  (i)
    @isbn = i
  end
  def price_as_string
    p = (@price*100)%100
    s =  p.to_i
    if(s==0)
      s="00"
    else
      s=s.to_s
    end
    return "$"+@price.to_i.to_s+"."+s
  end
end
