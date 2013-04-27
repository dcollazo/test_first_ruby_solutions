def reverser
  split_yield = yield.split(' ')
  case split_yield.size
  when 1 then split_yield[0].reverse
  else split_yield.each { |word| word.reverse! }.join(' ')
  end
end

def adder(num)
  yield + num
end

def repeater(n=1)
  n.times do
    yield
  end
end
  