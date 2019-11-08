require "byebug"

def aba_translate(word)
    word.gsub(/[aeiou]/) { |match|
        debugger
    }
end

def aba_array(array)

end