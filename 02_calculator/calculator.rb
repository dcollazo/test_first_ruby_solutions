def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(numbers)
  return 0 if numbers.empty?
  numbers.inject(:+)
end

def multiply(*numbers)
  return numbers[0] * numbers[1] if numbers.size == 2
  numbers.inject(:*)
end

def power(n1, n2)
  result = 1
  n2.times { result = result * n2 }
  result
end

def factorial(n)
  return 0 if n == 0
  (1..n).to_a.inject(:*)
end