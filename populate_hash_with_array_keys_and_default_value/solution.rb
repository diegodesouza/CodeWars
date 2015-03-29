def solution(keys, default_value)
  Hash[keys.product([default_value])
end

#or

def solution(keys, default_value)
  hash = {}
  keys.each do |key|
    value = default_value.dup rescue default_value
    hash[key] = value
  end
  hash
end

#or

def solution(keys, default_value)
  keys.each_with_object({}) do |key, hash|
    value = default_value.dup rescue default_value
    hash[key] = value
  end
end
