def bubble_sort(array)
  changes_required = 1
  while changes_required.positive?
    changes_required = 0
    (0..array.length - 1).each do |i|
      value1 = array[i]
      value2 = array[i + 1]
      next if (value1 <=> value2) != 1

      array[i] = value2
      array[i + 1] = value1
      changes_required += 1
    end
  end
  array
end

test_array = [4, 3, 78, 2, 0, 2]
puts bubble_sort(test_array)

def bubble_sort_by(array)
  count = 0
  while count < array.length - 1
    (0..array.length - 2).each do |i|
      left_item = array[i]
      right_item = array[i + 1]
      if (yield left_item, right_item).positive?
        array[i] = right_item
        array[i + 1] = left_item
      end
    end
    count += 1
  end
  array
end

test_run = (bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end)

puts test_run
