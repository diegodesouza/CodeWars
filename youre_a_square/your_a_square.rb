def is_square(x)
  return false if x < 0
  squared = Math::sqrt(x)
  x == squared**2
end
