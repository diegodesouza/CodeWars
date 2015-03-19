describe "stringToNumber" do
 it "should work for the examples" do
    Test.assert_equals (string_to_number "1234") , 1234
    Test.assert_equals (string_to_number "605" ) , 605
    Test.assert_equals (string_to_number "1405") , 1405
    Test.assert_equals (string_to_number "-7"  ) , -7
  end
end
