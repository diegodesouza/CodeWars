def checkNums(nums, expected)
  actual = solution(nums)
  Test.expect(actual, "solution did not return a value")
  Test.expect(actual == expected, "solution(#{nums}) was supposed to return #{expected}")
end

checkNums([1, 2, 3, 10, 5], [1, 2, 3, 5, 10])
checkNums(nil, [])
checkNums([], [])
checkNums([20, 2, 10], [2, 10, 20])
