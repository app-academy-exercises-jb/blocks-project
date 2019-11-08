require "byebug"

def select_even_nums(numbers)
    numbers.select(&:even?)
end

def reject_puppies(pups)
    pups.reject { |pup| pup["age"] <= 2 }
end

def count_positive_subarrays(array)
    array.select! { |subarr| subarr.sum > 0 }.count
    #generally we don't want select to be aggressive here
    #but the spec generates a false positive for not using Array#count on the input array
end

def aba_translate(word)
    word.gsub(/[aeiou]/, $~[0]+"b"+$~[0])
end

p aba_translate("hello")

def aba_array(array)
    array.map { |ele| aba_translate(ele) }
end
