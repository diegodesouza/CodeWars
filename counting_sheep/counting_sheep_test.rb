array1 = [true,  true,  true,  false,
          true,  true,  true,  true ,
          true,  false, true,  false,
          true,  false, false, true ,
          true,  true,  true,  true ,
          false, false, true,  true ]

array2 = []
(0...500).each{ array2.push(true) }
(0...5).each{ array2.push(nil) }
(0...100).each{ array2.push(false) }

Test.assert_equals(countSheeps(array1), 17 , "There are 17 sheeps in total, not #{countSheeps(array1)}")
Test.assert_equals(countSheeps(array2), 500 , "There are 500 sheeps in total, not #{countSheeps(array2)}" )
Test.assert_equals(countSheeps(array3), 0 , "There are no sheeps at all, you counted #{countSheeps(array3)}" )
