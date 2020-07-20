def bubble_sort(array)
  # Initialise changes_required with a non-zero value
  changes_required = 1

  # Create loop that only escapes with an iteration that required no changes.
  while changes_required > 0

  # Cycle through each index in the array.
  changes_required = 0

  # Iterate through each pair of adjacent values
    for i in (0..array.length - 1) do
      value_1 = array[i]
      value_2 = array[i+1]


      # Make comparison
      if (value_1 <=> value_2) == 1
        # Swap the values
        array[i] = value_2
        array[i+1] = value_1
        # Record the change
        changes_required += 1
      end
    end
  end
  return array
end

test_array = [5,16,-4,99,72,61,61,60,5]
puts bubble_sort(test_array)


def bubble_sort_by(arr)

  
  # count= 1
  
  for i in (0..arr.length - 1) do
    arr_1 = arr[i]
    arr_2 = arr[i+1]

    if arr[i] > arr[i +1]
      arr[i] = arr[i +1]
      arr[i + 1] = arr[i]
      
    end
    
  end
  return arr

end

bubble_sort_by(["hi","hello","hey"]) 

=begin
do |left,right|
  left.length - right.length
 end

 

if (arr_1 > arr_2) and arr.
  arr[i], arr[i+1] = arr[i+1], arr[i]

=end
# end