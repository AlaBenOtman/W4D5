
def first_anagram?(str1,str2)
   chars = str1.split("")
   arr = chars.permutation.to_a
   arr.include?(str2.split(""))
end

def second_anagram?(str1,str2)
    
end