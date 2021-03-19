
def first_anagram?(str1,str2)
   chars = str1.split("")
   arr = chars.permutation.to_a
   arr.include?(str2.split(""))
end

def second_anagram?(str1,str2) #n
    words = str1.split("")
    word2 = str2.split("")
    words.each_with_index do |char,i|
        new_idx = word2.find_index(char)
        if new_idx != nil 
            word2.delete(word2[new_idx])
        end
    end
    word2.empty?
end

def third_anagram?(str1,str2)
    word1=str1.split("")
    word2=str2.split("")
    word1.sort == word2.sort

end

def fourth_anagram?(str1,str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    word1=str1.split("")
    word2=str2.split("")
    word1.each do |char|
        hash1[char] +=1
    end
    word2.each do |char|
        hash2[char] +=1
    end
    hash1.each do |k,v|
        return false if !hash2.has_key?(k) || !hash2.has_value?(v)  
    end
    true
end

