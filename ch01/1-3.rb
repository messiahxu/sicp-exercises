# 练习 1.3

def sum(a, b, c) 
  if a > b
    a + ((b > c) ? b : c)
  else
    b + ((a > c) ? a : c)
  end
end
