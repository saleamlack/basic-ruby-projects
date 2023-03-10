def bubble_sort(array)
    (array.length - 1).times do
        (array.length - 1).times do |idx|
            current_num = array[idx]
            next_num = array[idx + 1]
            if current_num > next_num
                array[idx] = next_num
                array[idx + 1] = current_num
            end
            idx += 1
        end
    end
    array
end

p bubble_sort([4,3,78,2,13,107,4,83,0,2])