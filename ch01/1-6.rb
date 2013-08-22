# 练习 1.6
def new_if(predicate, then_clause, else_clause)
  if predicate
    then_clause
  else
    else_clause
  end
end

def sqrt_iter(guess,x)
 new_if good?(guess, x), guess, (sqrt_iter improve(guess, x), x)
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

sqrt 9 # => stack level too deep (SystemStackError)

# 因为 Ruby 的解释器也是应用序求值，所以会先计算全部参数，而参数中存在递归，于是就溢出了。
