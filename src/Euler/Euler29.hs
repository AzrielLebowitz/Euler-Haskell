module Euler.Euler29
  ( euler29,
  )
where

import Data.IntSet (fromList, size)
import Euler.EulerType (EulerType)

euler29 :: EulerType
euler29 = size $ fromList [x ^ y | x <- [2 .. 100], y <- [2 .. 100]]
