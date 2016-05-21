#this is a program that will take input, store that input as a variable, and print it back to the console

load 'words.rb'

#TODO There is control flow and functions just smeared together, let's clean 'em
#up

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
  if wordList.lookupPart(word) == "n"
    then word = "smurf"
  end
  return word
end

def chef(word, wordLis)
    vocab = ["hurdy", "burdy", "gurdy"]
    if word.downcase == "the"
        return "Bork!"
    else
        return vocab.sample
    end
end

#TODO this copypasta is unacceptable!
for word in words
  print smurf(word, wordList) + " "
  #puts word + " -> " + (wordList.lookupPart(word) || "")
end
puts ""
for word in words
  print chef(word, wordList) + " "
  #puts word + " -> " + (wordList.lookupPart(word) || "")
end
puts ""
