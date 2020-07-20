def bubble_sort(array)
  changes_required = 1
  while changes_required > 0
  # Cycle through each index in the array.
  changes_required = 0

    for i in (0..array.length - 1) do
      value_1 = array[i]
      value_2 = array[i+1]

      if (value_1 <=> value_2) == 1
        # Swap the values
        array[i] = value_2
        array[i+1] = value_1
        # Record the change
        changes_required += 1
      end
    end
  end

  # For each index, compare it to the next index along.
  # If the value at the index is greater than the value at the next index,
  # swap the two values.
  # Else if the value are the same, either swap or ignore (doesn't matter)
  # Else, the value must be smaller than the next value, so ignore.
  # Repeat the above process until no more swaps can be made.
  return array
end


test_array = [5,16,-4,99,72,61,61,60,5]
# puts test_array
puts bubble_sort(test_array)


# Create a value that records how many changes have been made in that iteration.
# When an iteration is done where no changes are made, stop.
