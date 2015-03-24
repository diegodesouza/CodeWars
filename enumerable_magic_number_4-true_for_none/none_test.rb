describe "none?" do
  list = [0,1,2,3,5,8,13]
  Test.assert_equals(none?(list){|item| item > 100}, true, "no items are over 100")
  Test.assert_equals(none?(list){|item| item.even?}, false, "some items are even")
  Test.assert_equals(none?(list){|item| !item.even?}, false, "all items are odd")

  Test.assert_equals(none?([]){|item| item.even?}, true, "empty list should return true")
end
