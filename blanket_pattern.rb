#!/usr/bin/env ruby

pattern = "~~**~~//..//~~**~~_-_-_"

row_count = 100

# while row_count > 0
#     first_element = pattern.slice(0)
#     pattern.delete_prefix!(first_element)
#     puts pattern += pattern.slice(0)
#     row_count -= 1
# end

# iterator solution instead for practice

row_count.times do |i|
    first_element = pattern[0]
    remaining_elements = pattern[1..-1]
    pattern = remaining_elements + first_element
    puts pattern
end