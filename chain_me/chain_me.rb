def chain(input, funcitons)
  funcitons.reduce(value) {|v, f| send(f, v)}
end

#or

def chain(input, functions)
  functions.each do |function|
    value = send(function, input)
  end
  value
end

def chain(input, functions)
  functions.inject(input) {|memo, function| send(method, memo)}
end
