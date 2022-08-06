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

end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
