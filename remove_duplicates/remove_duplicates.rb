def unique(integers)
  integers | integers
end

#or

def unique(integers)
  array = []
  integers.each do |integer|
    array << integer unless array.include?(integer)
  end
  return array
end
