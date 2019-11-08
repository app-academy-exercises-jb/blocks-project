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
        #debugger
        (hash[:grades].sum / hash[:grades].length) > 75
    }
end

students = [
    { name: "Alice", grades: [60, 68] },
    { name: "Bob", grades: [20, 100] }
  ]

p any_passing_students?(students)

def only_last_vowels(sentence)
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