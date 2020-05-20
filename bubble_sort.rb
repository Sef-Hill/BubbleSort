def bubble_sort(array)
    loop do
        is_changed = false

        array.each.with_index do |x, i|
            if array[i+1] != nil
                min_max = array.slice(i..i+1).minmax
                if array[i] != min_max.first then is_changed = true end
                array[i] = min_max.first
                array[i+1] = min_max.last
            end
        end
        break if !is_changed
    end
    return array  
end

p bubble_sort([4,3,78,2,0,2])