#this is a program that will take input, store that input as a variable, and print it back to the console

load 'words.rb'

# Setup
wordList = Words.new("data/words.tsv")
starting_text = ""

while text = gets
  starting_text = starting_text + text
end

def tokenize(text)
  word_array = []
  word_array = text.split
end

words = tokenize(starting_text)
for word in words
    puts word + " -> " + (wordList.lookupPart(word) || "")
end
