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


def my_min(arr)  O(n2)        
    min = arr.first
    arr.each_with_index do |ele1, i|
       (i+1...arr.length).each do |ele2|
            if arr[ele2] < ele1 && arr[ele2] < min
                min = arr[ele2]
            end
        end
    end
    min
end

def lc_subsum(list)
    sum = 0
    arr = []
    list.each_index do |i|
        tem = [list[i]]
        (i+1...tem.length).each do |j|
            tem << list[j]
        end
        arr << tem 
    end

    arr
    # arr.each do |ele|
    #     if ele[0] + ele[1] > sum 
    #         sum = ele[0] + ele[1]
    #     end

    # end
    # sum

end

def better_subsum(list)
    curr_sum = 0
    sum = 0
    # (0...list.length-1).each do |i|
    #     curr_sum = list[i] + list[i+1]
    #     if curr_sum > sum 
    #         sum = curr_sum
    #     end
    # end
    sum
end