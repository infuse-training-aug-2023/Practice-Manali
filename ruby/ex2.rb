class ArrayManipulator
    def element_at(arr, index)
      if index>arr.length-1
        puts "Out of index"
        exit
      end
      return arr[index]
    end
  
    def inclusive_range(arr, start_pos, end_pos)
      return arr[start_pos..end_pos]
    end
  
    def non_inclusive(arr, start_pos, end_pos)
      return arr[start_pos...end_pos]
    end
  
    def start_and_length(arr, start_pos)
      subarray = arr[start_pos..-1]
      return subarray.length
    end
  end
  
  arr = [9, 5, 1, 2, 3, 4, 0, -1]
  array_manipulator = ArrayManipulator.new
  
  index = 8 
  element = array_manipulator.element_at(arr, index)
  puts "Element at index #{index}: #{element}"
  
 
  