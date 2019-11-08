require "byebug"

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
        hash[:grades].any? { |i| i > 75 }
    }
end

def only_last_vowels(sentence)
    sentence.split(" ").map { |word| 
        letters = word.chars
        last_vowel = letters.each_with_index.inject { |last, (letter, idx)| 

            /[aeiou]/i.match?(letter) ? {idx => letter} : last
        }.to_a
        debugger
        letters.each { |letter| letter.gsub!(/[aeiou]/i, "") }
        letters[last_vowel.keys[0]] = last_vowel.values[0]
    }.join(" ")
end

p only_last_vowels("this is my story hee")