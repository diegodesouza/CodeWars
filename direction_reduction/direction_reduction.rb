def dirReduc(arr)
  directions = arr.join(" ")
  true while directions.sub!(/EAST\s+WEST|WEST\s+EAST|SOUTH\s+NORTH|NORTH\s+SOUTH/, "")
  directions.split
end

###############################################################################
#or
###############################################################################

def opposite(one, two)
  sort = [one,two].sort
  sort == ["NORTH", "SOUTH"] || sort == ["EAST","WEST"]
end

def dirReduc(arr)
  correct_dir = []
  arr.each do |x|
    if correct_dir.length == 0 || !opposite(x,correct_dir[-1])
      correct_dir << x
    else
      correct_dir.pop
    end
  end
  correct_dir
end

###############################################################################
#or
###############################################################################

def dirReduc(arr)
  directions = /(NORTHSOUTH|SOUTHNORTH|EASTWEST|WESTEAST)/
  coordinates = arr.join
  while coordinates.index(directions)
    coordinates.gsub!(directions,'')
  end
  coordinates.scan(/(NORTH|SOUTH|EAST|WEST)/).flatten
end

###############################################################################
#or
###############################################################################

def inverse(a,b)
  return true if a == "NORTH" && b == "SOUTH"
  return true if a == "SOUTH" && b == "NORTH"
  return true if a == "WEST" && b == "EAST"
  return true if a == "EAST" && b == "WEST"
  return false
end

def dirReduc(arr)
  loop do
    old_length = arr.length
    arr.each_index do |x|
      if inverse(arr[x], arr[x+1])
        arr.delete_at x
        arr.delete_at x
      end
    end
    break if old_length == arr.length
  end
  arr
end

###############################################################################
#or
###############################################################################

def dirReduc(arr)
  directions = arr.join(',')
  loop do
    dir = directions.sub(/NORTH,SOUTH|SOUTH,NORTH|EAST,WEST|WEST,EAST/, '').sub(/^,|,$/, '').sub(/,,/, ',')
    break if dir == directions
    directions = dir
  end
  return directions.split(',')
end

###############################################################################
#or
###############################################################################

def dirReduc(arr)
  opposite = lambda do |dir|
    if (dir == "NORTH")
      rep = "SOUTH"
    elsif (dir == "SOUTH")
      rep = "NORTH"
    elsif (dir == "EAST")
      rep = "WEST"
    elsif (dir == "WEST")
      rep = "EAST"
    else
      rep = ""
    end
    rep
   end
   result = []
   if (arr.length > 0)
     if (arr.length > 1)
       if (arr[0] == opposite.call(arr[1]))
         result = dirReduc(arr[2..-1])
       else
         result << arr[0]
         result << dirReduc(arr[1..-1])
       end
       else
         result << arr
       end
    else
      result << []
    end
    result = result.flatten
    if (result == arr)
      return arr
    else
      res = dirReduc(result)
    end
  res
end
