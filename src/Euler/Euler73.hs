module Euler.Euler73
  ( euler73,
  )
where

import Euler.EulerType (EulerType)

euler73 :: EulerType
euler73 = length [() | b <- [1 .. 12000], a <- [(b `div` 3 + 1) .. (b `div` 2)], gcd a b == 1] - 1 -- -1 because of 1/2
