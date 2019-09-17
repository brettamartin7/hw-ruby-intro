# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  summedVal = 0
  arr.each {
    |x|
    summedVal += x
  }
  return summedVal
end


def max_2_sum(arr)
  if (arr.length == 0)
    return 0
    
  elsif (arr.length >= 2)
    arr.sort! {|x, y| y <=> x} #sort largest to smallest
    return arr[0] + arr[1]
  
  else
    return arr[0]
  end
  
end


def sum_to_n?(arr,n)
  arr.each_with_index {
    |x, ind1|
    arr.each_with_index {
      |y, ind2|
      if ((x + y == n) && (ind1 != ind2))
        puts "X: #{x}, Y: #{y}"
        return true
      end
    }
  }
  return false
end


# Part 2

def hello(name)
  return "Hello, #{name}"
end


def starts_with_consonant?(s)
  if (s.length == 0)
    return false
  end
  consonant_array = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  s = s.downcase
  
  fc = s[0] #fc = firstCharacter
  if (consonant_array.include? fc)
    return true
  else
    return false
  end
end


def binary_multiple_of_4?(s)
  
  if (s.length == 0)
    return false
  end
  
  if (s.length == 1 && s[0] == "0")
    return true
  end
  
  valid = ["0","1"]
  
  unless (s.chars-valid).any?
    #valid
    reverseStr = s.reverse
    firstChar = reverseStr[0]
    secondChar = reverseStr[1]
    if (firstChar == "0" && secondChar == "0" && s.length >= 2)
      #multiple of 4
      puts "Multiple of 4!"
      return true
    else
      #not a multiple of 4
      puts "Not a multiple of 4"
      return false
    end
  else
    puts "Contains characters other than 1 or 0"
    return false
  end
  
end


# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError, 'ISBN is empty' unless isbn.length != 0
    raise ArgumentError, 'Price is less than 0' unless price > 0
    @isbn = isbn
    @price = price
  end
  
  #getters/setters
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    @price = price
  end
  
  #methods
  def price_as_string
    formattedNumber = "%0.2f" % [@price.to_f]
    return "$" + formattedNumber.to_str
  end
  
end

book = BookInStock.new("4124", 0.1)
puts str = book.price_as_string