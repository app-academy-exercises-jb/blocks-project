require "byebug"

def aba_translate(word)
    word.gsub(/[aeiou]/) { |match|
        match + "b" + match
    }
end

def aba_array(array)
    array.map { |ele| aba_translate(ele) }
end

p aba_translate("fly")