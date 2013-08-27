# 练习 1.9

# 为了和原生的 + 方法区别开，换成了 plus

def plus a,b
  if a == 0
    b
  else
    inc plus(dec(a), b)
  end
end

plus 3,5 
# 推导过程如下：
# plus 3,5 
# inc plus(2, 5)
# inc(inc(plus(1,5)))
# inc(inc(inc(plus(0,5))))
# inc(inc(inc(5)))
# inc(inc(6))
# inc 7
# 8
# 很明显是一个展开再收缩的过程，所以是递归的

def plus2 a,b
  if a == 0
    b
  else
    plus2 dec(a), inc(b)
  end
end

plus2 3, 5
# 推导过程如下：
# plus2 3,5
# plus2 2,6
# plus2 1,7
# plus2 0,8
# 8
# 并没有一个展开再收缩的过程，所以是迭代的。
