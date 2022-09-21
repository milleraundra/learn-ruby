numbers = [5, 6, 3, 201, 1, -8, 16, ] #4

def evaluate_numbers(array_of_numbers)
    
    total_greater_than_5 = 0
    for number in array_of_numbers
        total_greater_than_5 += 1 if number >= 5
    end
        
    return total_greater_than_5
end

puts evaluate_numbers(numbers);
