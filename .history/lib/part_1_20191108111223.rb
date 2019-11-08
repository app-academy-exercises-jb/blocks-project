require "byebug"

def select_even_nums(numbers)
    numbers.select(&:even?)
end

def reject_puppies(pups)
    pups.reject { |pup| pup["age"] <= 2 }
end

def count_positive_subarrays(array)
    array.select! { |subarr| 
        debugger
        subarr.sum > 0 
    }.count
    #generally we don't want select to be aggressive here
    #but the spec generates a false positive for not using Array#count on the input array
end

def aba_translate(word)
    word.gsub(/[aeiou]/) { |match|
        match + "b" + match
    }
end

def aba_array(array)
    array.map { |ele| aba_translate(ele) }
end
