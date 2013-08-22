# 练习 1.8

def cube x, guess = 1.0
  if good? guess, next_guess = improve(guess, x)
    next_guess
  else
    cube x, next_guess
  end
end

def good? guess, next_guess
  (guess - next_guess).abs / guess < 0.001
end

def improve guess, x
  (x / (guess ** 2) + 2 * guess) / 3
end

puts cube(100000000 ** 3) # => 100000000.00081353
# 大数达到了 1 亿的 3 次方，误差依然很小。

puts cube(0.00000001 ** 3) # => 1.0000000004190635e-05
# 误差还是在可以接受的范围内的。
