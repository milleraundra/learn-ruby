#1/usr/bin/env ruby

def find_longest_word(sentence)
    words = sentence.split(' ');
    longest_word = ''
    words.length.times do |index|
        if  words[index].length > longest_word.length
            longest_word = words[index]
        end
    end
    { :word => longest_word, :length => longest_word.length}
end

result = find_longest_word('If I were an apple hanging on a tree, I\'d give myself to the first green worm and together we could bee...')
puts result[:word]
puts result[:length]