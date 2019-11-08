require "byebug"

def aba_translate(word)
    word.gsub(/[aeiou]/) { |match|
        match + "b" + match
    }
end

def aba_array(array)

end

p aba_translate("test")