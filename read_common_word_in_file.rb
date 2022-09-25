#!/usr/bin/env ruby

def find_common_word_in_file(file)
    file = File.open(file)

    file_data = file.readlines.map{|x| x.downcase.gsub(/[^\w\s]/, '')}.map{|x| x.chomp + ' '}
    final_hash = {};
    file_data.each do |line|
        word_array = line.split(' ')
        word_array.each do |word|
            if !final_hash[word]
                final_hash.store(word, 1)
            else
                final_hash[word] += 1
            end
        end
    end
    final_hash.sort {|a1,a2| a2[1]<=>a1[1]}.to_h.first(3).to_h

end

puts find_common_word_in_file("file.txt")
