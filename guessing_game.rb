#!/usr/bin/env ruby

puts "What is your name?"
print "My name is: "
name = gets.chomp

puts "Hello, #{name.capitalize}! You have three attempts to try and guess a number I've randomly chosen between 0 and 5."

guesses_remaining = 3
random_number = rand(5)

while guesses_remaining > 0
    print "What number is your guess? "
    guess = gets.chomp
    if (guess == random_number.to_s)
        guesses_remaining -= 1
        puts "Congratulations! You won! The random number was #{random_number} and you had #{guesses_remaining} guesses remaining."
        exit
    else
        puts "That's not my number. Try again!"
        guesses_remaining -= 1
    end
end

puts "You lost! My number was #{random_number}. Better luck next time!"

