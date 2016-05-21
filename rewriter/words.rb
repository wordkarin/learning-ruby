class Words 

    def initialize(wordsFile)
        @partsByWord = {}
        File.open(wordsFile, "r") do |f|
            f.each_line do |line|
                line = line.chomp

                (word, part) = line.split("\t")
                @partsByWord[word.downcase] = part.downcase

            end
        end
    end

    def lookupPart(word)
        return @partsByWord[word.downcase] || ""
    end

end
