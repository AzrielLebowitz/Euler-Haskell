module Euler.Euler4(euler4) where
import Euler.EulerType (EulerType)
import MathUtils (isPalindrome)


generateNums :: [Int]
generateNums = [x * y | x <- [100..999], y <- [x..999]]

euler4 :: EulerType
euler4 = maximum $ filter isPalindrome generateNums
