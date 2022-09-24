#!/usr/bin/env ruby

def pig_latin(message)
    array = message.split(" ")

    new_message = [];
    array.length.times do |i|
        new_message.push(convert_word(array[i]))
    end
    new_message.join(" ")
end

def convert_word(word)
    vowels = ['a', 'e', 'i', 'o', 'u']
    word.downcase!
    if vowels.include?(word[0])
        word << 'ay'
    elsif !vowels.include?(word[1])
        first_letters = word[0..1]
        word.slice! first_letters
        word << first_letters + 'ay'
    else
        first_letter = word[0]
        word.slice! first_letter
        word << first_letter + 'ay'
    end
    word
end

puts pig_latin("Say something I'm giving up on you")
puts pig_latin("Shocked and amazed running freely through the trees")