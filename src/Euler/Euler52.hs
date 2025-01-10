module Euler.Euler52
  ( euler52,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (sameDigits)

euler52 :: EulerType
euler52 = head $ filter (\x -> all (\y -> sameDigits x (x * y)) [1 .. 6]) [1 ..]
