list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
def butter_min(arr)
    min = arr.first
    arr.each do |ele|      #O(N)
        if ele < min
            min = ele
        end
    end
    min
end


def my_min(arr)         
    min = arr.first
    arr.each_with_index do |ele1, i|
       (i+1...arr.length).each do |ele2|
            if arr[ele2] < ele1 
                min = arr[ele2]
            end
        end
    end
    min
end
