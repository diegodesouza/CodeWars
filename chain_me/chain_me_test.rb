def add num
  num.to_f + 10
end

def mul num
  num.to_f * 30
end

def sub num
	num.to_f - 5
end

def div num
	num.to_f / 2
end
error = "Error: chain function not working properly"
input = rand + 1
[
  [input, [:add, :mul], (input + 10) * 30],
  [input, [:div, :sub], (input / 2) - 5],
  [input, [:add, :sub], input + 10 - 5],
  [input, [:add, :div], (input + 10) / 2],
  [input, [:mul, :sub], input * 30 - 5],
  [input, [:add, :div, :sub, :mul], (((input + 10) / 2) - 5) * 30],
  [input, [:div, :sub, :mul], ((input / 2) - 5) * 30]
].each do |initial, methods, expected|
  Test.assert_equals(chain(initial, methods), expected, error)
end
