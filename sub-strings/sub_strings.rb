def substrings(word, dictionary)
    count_hash = dictionary.reduce(Hash.new(0)) do |new_hash, item|
        test_word = word.downcase
        while test_word.include?(item)
            new_hash[item] += 1
            test_word = test_word.sub(item, "")
        end
        new_hash
    end
    count_hash
end