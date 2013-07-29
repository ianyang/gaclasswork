# **********Fibonnaci**********

def fibonnaci(n)
  if n==1
    0
  elsif n ==2
    1
  else
    n.times do
      (n-1) + (n-2)
    end
  end
end

p fibonnaci(4)

4.times do (4-1) + (4-2) end

# **********Prime number**********

def is_prime(n)

  i = n-1
  while i>1 do
    if n % i == 0
      return false
    end
      i -= 1
  end
  return true

end

(1..100).each do |x|
  p x if is_prime(x) == true
end

# **********Array to hash**********

array = [['a', 1], ['b', 2], ['c',3],['d', 4]]
hash = Hash[array.map {|x, y| [x, y]}]

p hash

# **********String**********

s = "AAASSSDDDDRDDSASSDDDSSSAD"
arr = s.split(//)
new_arr = []

n=0
while n < arr.length do

  count=0
  i=n
  while arr[i] == arr[i+1] do
    count+=1
  i+=1
  end

  if count > 0
    new_arr << (count+1).to_s+arr[i]
  else
    new_arr << arr[i]
  end

  n+=count+1

end

p new_arr.join("")

# **********Table**********

def multi_table (n)

i = 1
  while i<=n

    arr=[]
    (1..n).each do |x|
      arr<< x*i
    end
    p arr
    i += 1
  end
end

multi_table(12)


# **********Bonus**********













