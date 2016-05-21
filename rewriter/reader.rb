#this is a program that will take input, store that input as a variable, and print it back to the console

load 'words.rb'

# Setup
wordList = Words.new("data/words.tsv")
starting_text = ""

while text = gets
  starting_text = starting_text + text
end

#TODO update tokenize to separate punctuation into its own element
def tokenize(text)
  word_array = text.split
end

words = tokenize(starting_text)

def smurf(word, wordList)
  if wordList.lookupPart(word).strip == "n"
    then word = "smurf"
  end
  return word
end

for word in words
  puts smurf(word, wordList)
  puts word + " -> " + (wordList.lookupPart(word) || "")
end
