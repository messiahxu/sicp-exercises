# 练习 1.1

10 # => 10

5 + 3 + 4 # => 12

9 - 1 # => 8

6 / 2 # => 3

( 2 * 4 ) + ( 4 - 6 ) # => 6

a = 3 # => 3

b = a + 1 # => 4

a + b + ( a * b ) # => 19

a == b # => false

if b > a && b < (a * b)
  b
else
  a
end # => 4

if a == 4 
  6
elsif b == 4
  6 + 7 + a
else
  25
end # => 16

2 + ((b > a) ? b : a) # => 6

(if a > b 
 a
 elsif a < b
   b
 else
   -1
 end) * (a + 1) # => 16

