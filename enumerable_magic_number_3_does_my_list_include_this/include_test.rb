describe "include?" do
  list = [0,1,2,3,5,8,13,2,2,2]
  Test.assert_equals(include?(list, 13), true, "list includes 13")
  Test.assert_equals(include?(list, 100), false, "list does not include 100")
  Test.assert_equals(include?(list, 2), true, "list includes 2 multiple times")

  Test.assert_equals(include?([], 0), false, "empty list doesn't include anything")
end
