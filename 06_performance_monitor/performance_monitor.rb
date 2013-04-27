def measure(n = 1)
  current_time = Time.now
  n.times { yield }
  (Time.now - current_time) / n
end