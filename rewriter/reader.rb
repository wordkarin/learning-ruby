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
  return text.split
end

words = tokenize(starting_text)

def smurf(word, wordList)
  if wordList.lookupPart(word) == "noun"
    word = "smurf"
  elsif wordList.lookupPart(word) == "pnoun"
    word = "smurfs"
  end
  return word
end

def chef(word, wordList)
    noun = ["beddy-boo", "bool", "beence", "bownd"]
    verb = ["bork", "smork"]
    adjective = ["hurdy", "burdy", "gurdy"]
    part = wordList.lookupPart(word)
  
    if part == "noun"
        return noun.sample
    elsif part == "pnoun"
        return noun.sample + "s"
    elsif part == "verb"
        return verb.sample
    elsif part == "adj"
        return adjective.sample
    elsif part == "prep"
        return word
    elsif part == "art"
        return "da"
    else 
        return word
    end
end

#TODO this copypasta is unacceptable!
for word in words
  print word + "(" + (wordList.lookupPart(word) || "") + ") "
end
puts ""
puts ""
for word in words
  print smurf(word, wordList) + " "
end
puts ""
puts ""
for word in words
  print chef(word, wordList) + " "
end
puts ""
