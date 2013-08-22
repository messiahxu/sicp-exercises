# 练习 1.7
def sqrt_iter(guess,x)
  if good?(guess, x)
    guess
  else
    sqrt_iter improve(guess,x), x
  end
end

def improve(guess, x)
  average guess, x / guess
end

def average(x, y)
  (x+y)/2
end

def good?(guess, x)
  (guess*guess - x).abs < 0.001
end

def sqrt x
  sqrt_iter 1.0, x
end

puts sqrt(0.001 * 0.001) # => 0.031260655525445276
puts sqrt(0.01 * 0.01)     # => 0.03230844833048122
# 很明显误差过大，因为数字太小时，可能猜测几次之后，猜测值的平方就已经小于 0.001 了。
 
#puts sqrt 100000000000000000000000 # => stack level too deep (SystemStackError)

def new_sqrt x
  new_sqrt_iter 1.0, x
end

def new_sqrt_iter guess, x 
  if new_good? guess, improve(guess, x)
    improve(guess, x)
  else
    new_sqrt_iter improve(guess, x), x
  end
end

def new_good? guess, next_guess
  (guess - next_guess).abs / guess < 0.001
end

puts new_sqrt(0.001 * 0.001) # => 0.0010000001533016628
# 误差很小了。
puts new_sqrt(10000000000000000000000) # => 100000000056.33694
# 大数达到 10 的 22 次方时，误差也不过才 56。
