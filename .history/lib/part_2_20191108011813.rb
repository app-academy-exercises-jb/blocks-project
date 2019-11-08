def all_words_capitalized?(array)
    array.all? { |word| capitalized?(word) }
end

def capitalized?(word)
    caps = word[0].upcase + word[1..-1].downcase
    word == caps
end

def no_valid_url?(array)
    valids = ['.com', '.net', '.io', '.org']
    array.none? { |url| 
    
        valids.each { |term| 
            /#{term}$/.match?(url) ? true : false
        }

    }
end