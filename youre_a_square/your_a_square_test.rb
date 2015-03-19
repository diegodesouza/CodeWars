describe "is_square" do
  it "should work for some examples" do
    Test.assert_equals (is_square (-1)), false, "-1 is not a perfect square"
    Test.assert_equals (is_square  3),   false,  "3 is not a perfect square"
    Test.assert_equals (is_square  4),    true,   "4 is a perfect square (2 * 2)"
    Test.assert_equals (is_square 25),    true,  "25 is a perfect square (5 * 5)"
    Test.assert_equals (is_square 26),   false, "26 is not a perfect square"
  end
  it "should work for random square numbers" do
    for i in 1..100
      l = Test.random_number() % 10000
      Test.assert_equals(is_square(l*l), true)
    end
  end
end
