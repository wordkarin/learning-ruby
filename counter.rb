#initialize the variables

i = 0
array = ['red', 'blue', 'green', 'orange', 'yellow']

#print the elements in the array
for color in array
  puts color
end

for i in (0..array.length)
  puts i
end

puts "give me a name in mixed case"
#the .strip removes any whitespace, the .downcase removes any capital letters.
text = ((gets.chomp).strip).downcase
#.split splits the string into sections (delimited by a space, since I haven't specified), .map makes a new array with my words in it, (&:capitalize) appears to replace the elements in the array with capitalized versions of those words, .join puts the words back into a string, now capitalized and separated by spaces.  
final = text.split.map(&:capitalize).join(' ')
puts final

#DONE.
