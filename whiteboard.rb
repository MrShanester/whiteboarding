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

def validate(string)
  i = 0
  stack = []
  while i < string.length do
    if string[i] == "[" || string[i] == "{" || string[i] == "("
      stack << string[i]
    elsif string[i] == "]" && stack.last == "["
      stack.pop
    elsif string[i] == "}" && stack.last == "{"
      stack.pop
    elsif string[i] == ")" && stack.last == "("
      stack.pop
    end
    i += 1
  end
  return "Valid" if stack.length == 0
  "Invalid"
end

print validate("({[})")