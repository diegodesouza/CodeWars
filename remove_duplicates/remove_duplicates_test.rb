describe "Unique" do
    it "The method unique should be defined." do
        Test.expect(defined?(unique), "The method unique is not defined.")
    end

    it "Empty array should return an empty array." do
        Test.assert_equals(unique([]), [], "Failed call unique([])")
    end

    it "One value should return that value in array." do
        Test.assert_equals(unique([-1]), [-1], "Failed call unique([-1])")
    end

    it "Multiple values should return in same order as given." do
        Test.assert_equals(unique([-1, 5, 10, -100, 3, 2]), [-1, 5, 10, -100, 3, 2], "Failed call unique([-1, 5, 10, -100, 3, 2])")
    end

    it "Duplicates should be removed and in the order first seen." do
        Test.assert_equals(unique([1, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2]), [1, 2, 3], "Failed call unique([1, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2])")
        Test.assert_equals(unique([1, 3, 2, 3, 2, 1, 2, 3, 1, 1, 3, 2]), [1, 3, 2], "Failed call unique([1, 3, 2, 3, 2, 1, 2, 3, 1, 1, 3, 2])")
        Test.assert_equals(unique([3, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2]), [3, 2, 1], "Failed call unique([3, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2])")
    end

    it "Duplicates should be remove and in the order first seen. (Random)" do
        Test.assert_equals(unique(test_array), solution, "Failed call unique(#{test_array.inspect})")
    end
end
