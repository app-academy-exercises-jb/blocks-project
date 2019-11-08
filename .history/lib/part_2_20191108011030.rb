def all_words_capitalized?(array)
    array.all? { |word| capitalized?(word) }
end

def capitalized?(word)
    caps = word[0].upcase + word[1..-1]
    word == caps
end