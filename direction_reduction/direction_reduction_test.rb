a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
Test.assert_equals(dirReduc(a), ["WEST"])
u=["NORTH", "WEST", "SOUTH", "EAST"]
Test.assert_equals(dirReduc(u), ["NORTH", "WEST", "SOUTH", "EAST"])
