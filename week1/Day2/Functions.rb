def add(a, b)
	return a + b
end

def total(price, tax_percent)
  t = price * (1 + (tax_percent.to_f / 100.0))
  return t
end

def in_to_cm(inches)
  return inches.to_f * 2.54
end

p add(6, 7)
p total(27, 8)
p in_to_cm(77)