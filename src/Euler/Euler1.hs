module Euler.Euler1
  ( euler1,
  )
where

import Data.List ()
import Euler.EulerType (EulerType)

sumOfArrayOfMulti :: Int -> Int
sumOfArrayOfMulti untilMax = sum [x | x <- [1 .. untilMax], x `mod` 3 == 0 || x `mod` 5 == 0]

euler1 :: EulerType
euler1 = sumOfArrayOfMulti 999
