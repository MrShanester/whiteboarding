# Find the longest substring without repeating letters

def longest(string) 
  output = ""
  i = 0
  count = 0
  string.length.times do 
    hash = {}
    temp = ""
    while i < string.length do 
      if hash[string[i]]
        break
      else 
        temp += string[i]
        hash[string[i]] = true
      end
      i += 1
    end
    count += 1
    i = count
    output = temp if temp.length > output.length
  end
  return output
end

print longest("Flubberbub")