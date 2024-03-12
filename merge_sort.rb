def merge_sort(array)
  return array if array.length == 1

  left = merge_sort(array[0...array.length / 2])
  right = merge_sort(array[array.length / 2..])

  # Merge left and right
  merged = []
  while !left.empty? && !right.empty?
    merged << if left.first <= right.first
                left.shift
              else
                right.shift
              end
  end
  merged + left + right
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
p merge_sort([105, 79, 100, 110])
