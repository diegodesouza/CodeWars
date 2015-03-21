describe :next_birthday_of_the_week do
	it "should be 11 for Date.new(1990,10,16)" do
  	Test.expect(next_birthday_of_the_week(Date.new(1990, 10, 16)) == 11, "Failed for 1990 10 16")
  end

 	it "should be 6 for Date.new(2012,5,20)" do
  	Test.expect(next_birthday_of_the_week(Date.new(2012, 5, 20)) == 6, "Failed for 2012 5 20")
  end
end
