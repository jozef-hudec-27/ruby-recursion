def fibonacci_iterative(n)
  nums = [0, 1]

  return nums[0...n] if n <= 2

  (n - 2).times do
    nums << nums[-1] + nums[-2]
  end

  nums
end

def fibonacci_recursive(n)
  return (0...n).to_a if n <= 2

  prev = fibonacci_recursive(n - 1)
  prev.concat([prev[-2] + prev[-1]])
end

def merge_sorted_arrays(arr1, arr2)
  sorted = []
  left = 0
  right = 0

  while left < arr1.length && right < arr2.length
    if arr1[left] < arr2[right]
      sorted << arr1[left]
      left += 1
    else
      sorted << arr2[right]
      right += 1
    end
  end

  while left < arr1.length
    sorted << arr1[left]
    left += 1
  end

  while right < arr2.length
    sorted << arr2[right]
    right += 1
  end

  sorted
end

# SLICING THE ARRAY EACH TIME WE CALL merge_sort
# def merge_sort(arr)
#   n = arr.length
#   return arr if n <= 1

#   left_half_sorted = merge_sort(arr[0...n / 2])
#   right_half_sorted = merge_sort(arr[n / 2..])
#   merge_sorted_arrays(left_half_sorted, right_half_sorted)
# end

def merge_sort(arr, left = 0, right = arr.length)
  return left == right ? [] : [arr[left]] if right - left <= 1

  left_half_sorted = merge_sort(arr, left, (left + right) / 2)
  right_half_sorted = merge_sort(arr, (left + right) / 2, right)
  merge_sorted_arrays(left_half_sorted, right_half_sorted)
end
