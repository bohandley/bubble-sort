def bubble_sort(array)
  raise(ArgumentError, 'Array must be an array') unless array.class == Array
  raise(ArgumentError, 'Array must not be empty') if array.empty?
  raise(ArgumentError, 'Array must only contain integers') unless array.all? {|el| el.class == Integer}
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

