module Euler.Euler53
  ( euler53,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (possibleCombos)

count :: Integer -> Int
count n = length $ filter (>= 1000000) $ map (possibleCombos n . toInteger) [1 .. (n - 1)]

euler53 :: EulerType
euler53 = sum $ map (count . toInteger) [20, 21 .. 100]
