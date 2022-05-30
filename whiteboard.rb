# Find the longest substring without repeating letters

# def longest(string) 
#   output = ""
#   i = 0
#   count = 0
#   string.length.times do 
#     hash = {}
#     temp = ""
#     while i < string.length do 
#       if hash[string[i]]
#         break
#       else 
#         temp += string[i]
#         hash[string[i]] = true
#       end
#       i += 1
#     end
#     count += 1
#     i = count
#     output = temp if temp.length > output.length
#   end
#   return output
# end

# print longest("Flubberbub")

#Psuedo linked list reverse number adder

# def linked(list_one, list_two)
#   number_one = ""
#   number_two = ""
#   list_one.length.times do
#     number_one += list_one.pop.to_s
#   end
#   list_two.length.times do
#     number_two += list_two.pop.to_s
#   end

#   return number_one.to_i + number_two.to_i
# end

# print linked([2,3,4], [5,6,7])

# Maximum volume of  water based on heght and width
# input: height = [1,8,6,2,5,4,8,3,7]
# expected output: volume = 49

# def volume(height)
#   j = 0
#   i = 0
#   liquid = 0
#   height.length.times do 
#     distance = 1
#     while j < height.length
#       if height[i] > height[j]
#         temp =  height[j]
#       else
#         temp = height[i]
#       end
#       temp = temp * distance
#       liquid = temp if temp > liquid
#       distance += 1
#       j += 1
#       temp = 0
#     end
#     i += 1
#     j = i + 1
#   end
#   return liquid
# end

# print volume([1,8,6,2,5,4,8,3,7])

# Validate parentheses

def validate(s)
  i = 0
  stack = []
  while i < s.length do
    if s[i] == "[" || s[i] == "{" || s[i] == "("
      stack << s[i]
    elsif s[i] == "]" && stack.last == "["
      stack.pop
    elsif s[i] == "}" && stack.last == "{"
      stack.pop
    elsif s[i] == ")" && stack.last == "("
      stack.pop
    end
    i += 1
  end
  return "Valid" if stack.length == 0
  "Invalid"
end

# print validate("({[})")

# return smallest missing number

def smallest(nums)
  hash = {}
  nums.each do |num|
    hash[num] = true
  end
  small = 1
  while true
    return small unless hash[small]
    small += 1
  end
end

# print smallest([-1, -2, 4, 5, 6, 2 ,1 ,3])

# bubble sort

def bubble_sort(array)
  sorted_array = array
  temp = 0
  array.length.times do
    i = 0
    (array.length - 1).times do
      if array[i + 1] < array[i]
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp
      end
      i += 1
    end
  end
  return sorted_array
end

# print bubble_sort([3,4,5,2,1])

# double items in array

def double(array)
  return array.map{|n| n * 2}
end

# print double([1,2,3,4,5])

#select all even numbers from an array

def even(array)
  return array.select{|n| n % 2 == 0}
end

# print even([1,2,3,4,5])

#string to integer

def s_to_i(string)
  return string.gsub(/[a-zA-Z ]/, "").to_i
end

# print s_to_i("     AAvv vv-42 with words      ")


# Integers not contained in both arrays 

def outliers(array, array_two)
  a_one_hash = {}
  a_two_hash = {}
  return_array = []
  array.each do |num|
    a_one_hash[num] = true
  end
  array_two.each do |num|
    a_two_hash[num] = true
  end
  array.each do |num|
    return_array << num unless a_two_hash[num]
  end
  array_two.each do |num|
    return_array << num unless a_one_hash[num]
  end
  return return_array
end

# print outliers([1,2,3,4,5], [1,3,6,7])

# return all unique numbers

def unique(array)
  hash = {}
  return_array = []
  array.each do |num|
    unless hash[num]
      hash[num] = 1
    else 
      hash[num] += 1
    end
  end
  hash.each do |k,v|
    if v == 1
      return_array << k
    end
  end
  return return_array
end

# print unique([1,1,2,3,3,4,4,5,6,6,6])

#outut = [2,5]

def fancy?(string)
  hash = {"posh" => true, "sir" => true, "lady" => true, "lord" => true, "prim" => true, "dear" => true, "salutations" => true, "gold" => true}
  array = string.split(" ")
  count = 0
  array.each do |word|
    count += 1 if hash[word.downcase]
  end
  return true if count >= 10
  false
end

# print fancy?("Hello my posh boy, and salutations to your father.")

def theory
  answer = 42
  return answer
end

# print theory

def divisible_sum_pairs(k, ar)
  pairs = []
  valid = [] 
  ar.each do |num|
    ar.each do |n2|
      pairs << [num, n2] if num < n2
    end      
  end
  pairs.each do |pair|
    valid << pair if (pair[0] + pair[1]) % k == 0
  end
  return valid.length
end

print divisible_sum_pairs(3, [1,3,2,6,1,2])

def log_stack(height)
  i = 1
  height.times do
    stack = ""
    i.times do
      stack += "o"
    end
    puts stack.center(height)
    i += 1
  end
end

log_stack(6)

def diablo_ii_wolf_counter(w, d_w, m_w, m_d)
  if w < m_w
    puts "You may summon #{m_w - w} more wolves."
  elsif w == m_w
    puts "You have summoned the maximum amount of wolves."
  else
    puts "Invalid: Wolf Maximum Exceeded"
  end
  puts "-------------------------------"
  if d_w < m_d
    puts "You may summon #{m_d - d_w} more dire wolves."
  elsif d_w == m_d
    puts "You have summoned the maximum amount of dire wolves."
  else
    puts "Invalid: Dire Wolf Maximum Exceeded"
  end
end

diablo_ii_wolf_counter(2, 3, 5, 4)
