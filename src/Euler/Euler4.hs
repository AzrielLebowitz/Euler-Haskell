module Euler.Euler4 (euler4) where

import Euler.EulerType (EulerType)
import MathUtils (isPalindrome)

generateNums :: [Int]
generateNums = [x * y | x <- [998, 997 .. 100], y <- [999, 998 .. x]]

euler4 :: EulerType
euler4 = maximum $ take 5 $ filter (isPalindrome . show) generateNums
