def caesar_cipher(source_string, shift_factor)
    up_case_chr = ("A".."Z").to_a
    low_case_chr = ("a".."z").to_a
    
    new_string = source_string.split("").map do |character|
        if (up_case_chr.include?(character))
            char_index = up_case_chr.index(character) + shift_factor
            char_index = char_index % up_case_chr.length
            up_case_chr[char_index]
        elsif (low_case_chr.include?(character))
            char_index = low_case_chr.index(character) + shift_factor
            char_index = char_index low_case_chr.length
            low_case_chr[char_index]
        else
            character
        end
    end
    new_string.join("")
end