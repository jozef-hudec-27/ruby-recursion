def fibonacci_iterative(n)
  nums = [0, 1]

  return nums[0...n] if n <= 2

  (n - 2).times do
    nums << nums[-1] + nums[-2]
  end

  nums
end
