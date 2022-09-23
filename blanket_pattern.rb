pattern = "~~**~~//..//~~**~~_-_-_"

row_count = 100

while row_count > 0
    first_element = pattern.slice(0)
    pattern.delete_prefix!(first_element)
    puts pattern += pattern.slice(0)
    row_count -= 1
end