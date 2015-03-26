describe "any?" do
  list = [0, 1, 2, 3, 5, 8, 13]
  Test.assert_equals(any?(list){|item| item.even?}, true, "some items on the list are even")
  Test.assert_equals(any?(list){|item| item > 20}, false, "no items are greater than 20")
  Test.assert_equals(any?(list){|item| item > 0}, true, "all items are positive integers")

  Test.assert_equals(any?([]){|item| item.even?}, false, "an empty list should return false")
end
