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

def linked(list_one, list_two)
  number_one = ""
  number_two = ""
  list_one.length.times do
    number_one += list_one.pop.to_s
  end
  list_two.length.times do
    number_two += list_two.pop.to_s
  end

  return number_one.to_i + number_two.to_i
end

print linked([2,3,4], [5,6,7])