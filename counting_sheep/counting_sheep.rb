def count_sheeps(array)
  arr = []
  array.each do |bool|
    if bool == true
      arr << bool
    end
  end
end

#or

def count_sheeps(array)
  array.count(true)
end
