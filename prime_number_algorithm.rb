numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 102, 129, 37, -201]

def find_prime_numbers(array_of_numbers)
    prime_numbers = []
    for candidate in array_of_numbers
        if candidate > 1
            prime_numbers.push(candidate) if evaluate_number(candidate)
        end
    end
    return prime_numbers
end

def evaluate_number(number)
    tracker =  number - 1
    division_leaves_remainder = true

    while (division_leaves_remainder && tracker > 1) do
        division_leaves_remainder = (number % tracker) > 0
        tracker -= 1 if tracker
    end
    return division_leaves_remainder
end

puts find_prime_numbers(numbers)
