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

def bubble_sort_by(array)
  count = 0
  while count < array.length - 1
    for i in (0..array.length-2) do
      left_item, right_item = array[i], array[i+1]
      if (yield left_item, right_item).positive?
        array[i], array[i+1] = right_item, left_item
      end
    end
    count += 1
  end
  return array
end

puts (bubble_sort_by(["A very long string","hi","hello","hey","excellent","pyjamas","a"]) do
  |left,right|
  left.length - right.length
end)
