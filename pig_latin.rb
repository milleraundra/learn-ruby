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
    word_array = word.split('')
    vowel_index =word_array.index { |x| vowels.include?(x)}
    if vowel_index == 0 
        word << 'ay'
    else 
        move_letters = word.slice! word[0..(vowel_index - 1)]
        word << move_letters + 'ay'
    end
end

puts pig_latin("Say something I'm giving up on you")
puts pig_latin("Shocked and amazed running freely through the trees")