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
