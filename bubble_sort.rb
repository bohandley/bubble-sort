def bubble_sort(array)
  loop do 
    changed = false
    array.each_with_index do |el, index|
      if array[index+1] && el > array[index + 1]  
        plus = array[index + 1]
        array[index + 1] = el
        array[index] = plus
        changed = true
      end
    end
    break if changed == false
  end
  array
end

p bubble_sort([1,3,2])
