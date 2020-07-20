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
# puts bubble_sort(test_array)

# Bubble Sort By Method
# def bubble_sort_by
#
#   yield 2 3
#
#   # for i in (0..arr.length - 1) do
#   #   value_1 = arr[i]
#   #   value_2 = arr[i+1]
#   #
#   #   if arr[i] > arr[i +1]
#   #     arr[i] = arr[i+1]
#   #     arr[i + 1] = arr[i]
#   #   end
#   # end
#   # return arr
# end



# Method
def bubble_sort_by(array)

  for i in (0..array.length - 1) do
    left_item = array[i]
    right_item = array[i+1]

    block_return = yield array[i], array[i+1]
    # Save this to a variable.
    # Run a conditional to check its value.
    if block_return == 1
      # Swap the values
      array[i] = right_item
      array[i+1] = left_item
    end
  end
end

test_2 = ["hi","hello","hey"]

# Block
bubble_sort_by(["hello", "hi"]) do |left_item, right_item|
  if left_item.length > right_item.length
    -1
  elsif left_item.length == right_item.length
    0
  else
    1
  end
end



# bubble_sort_by(["hi","hello","hey"])
