class ArrayManipulator
    def element_at(arr, index)
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
  
  index = 2  
  element = array_manipulator.element_at(arr, index)
  puts "Element at index #{index}: #{element}"
  
  start_pos = 2  
  end_pos = 5    
  elements = array_manipulator.inclusive_range(arr, start_pos, end_pos)
  puts "Elements between positions #{start_pos} and #{end_pos}: #{elements}"
  
  elements = array_manipulator.non_inclusive(arr, start_pos, end_pos)
  puts "Elements between positions #{start_pos} (inclusive) and #{end_pos} (exclusive): #{elements}"
  
  length = array_manipulator.start_and_length(arr, start_pos)
  puts "Length of array from position #{start_pos}: #{length}"
  