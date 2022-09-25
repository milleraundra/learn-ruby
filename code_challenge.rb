# array of number
# return sorted based on highest to lowest

# [2, 15, 1, 3, 5, 30]
def sort_array(array)
    array.length.times do
        array.each_with_index do |num, index|
            if index == array.length - 1
                break
            end
            if (num > array[index + 1])
                oldNum = num
                array[index] = array[index + 1]
                array[index + 1] = oldNum 
            end
        end
    end
    array
end

puts sort_array([2, 15, 1, -1, 5, 30, -5, 90000])