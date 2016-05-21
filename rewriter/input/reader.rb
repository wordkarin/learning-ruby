#this is a program that will take input, store that input as a variable, and print it back to the console
puts "enter some text please."
starting_text = ""

while text = gets
  starting_text = starting_text + text
end

def tokenize(text)
  word_array = []
  word_array = text.split
end

puts tokenize(starting_text)
