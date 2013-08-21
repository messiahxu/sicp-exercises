# 练习 1.5

def p
  p
end

def test(x,y)
  if x == 0
    0
  else
    y
  end
end

test(0, p) # => stack level too deep
# 所以呢，Ruby 的这个解释器是用应用序方式求值的。
