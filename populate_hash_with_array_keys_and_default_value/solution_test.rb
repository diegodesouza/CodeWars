result = solution([:draft, :completed], 0)
Test.expect(result.has_key?(:draft), "solution did not return correct keys")
Test.expect(result.has_key?(:completed), "solution did not return correct keys")
Test.expect(result[:draft] == 0, "solution did not return hash with correct default values")
Test.expect(result[:completed] == 0, "solution did not return hash with correct default values")
