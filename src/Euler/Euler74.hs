module Euler.Euler74
  ( euler74,
  )
where

import Data.IntMap (empty)
import Euler.EulerType (EulerType)
import MathUtils (digitFactorialChain)

euler74 :: EulerType
euler74 = length $ [() | x <- [1 .. 1000000], let b = length (digitFactorialChain x empty), b == 61]
