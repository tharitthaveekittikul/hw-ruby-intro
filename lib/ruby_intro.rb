# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  result = 0
  arr.each {|num| result += num}
  result
end

def max_2_sum arr
  # YOUR CODE
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  arr.sort! {|firstnum, secondnum| secondnum <=> firstnum}
  return arr[0] + arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length <= 1
  arr.each {|firstnum| arr.each {|secondnum|
    if firstnum == secondnum
      next
    end
    if firstnum + secondnum == n
      return true
    end
    } }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowel = ["a","e","i","o","u"]
  first_letter = s[0]
  return false if first_letter == "" or first_letter.nil?
  return false if vowel.include? first_letter.downcase
  return false unless first_letter.match?(/[[:alpha:]]/)
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.match?(/[[:alpha:]]/) or s == ""
  binary = s.to_i.to_s(2)
  return true if binary.to_i % 4 == 0
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn,price)
    if isbn == "" or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$#{'%.2f' % @price}"
  end
end
