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
    
        valids.any? { |term| 
            if /#{term}$/.match?(url)
                true
            else
                false
            end
        }

    }
end

def any_passing_students?(array)
    array.any? { |hash|
        (hash[:grades].sum / hash[:grades].length) > 75
    }
end

def only_last_vowels(sentence) 
#messed this up on the hacker rank quiz 1 due to my misunderstanding of ruby's handling of variables
#the key to this for me was persisting the value of a variable through String.new(var)
    sentence.split(" ").map { |word| 
        letters = word.chars
        
        if letters.any? {|letter| /[aeiou]/i.match?(letter) } 

            last_vowel = word.each_char.with_index.inject({}) { |last, (letter, idx)|
                /[aeiou]/i.match?(letter) ? {idx => String.new(letter)} : last
            }
            letters.each { |letter| letter.gsub!(/[aeiou]/i, "") }
            letters[last_vowel.keys[0]] = last_vowel.values[0]

        end

        letters.join("")
    }.join(" ")
end