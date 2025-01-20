module Euler.Euler29
  ( euler29,
  )
where

import Data.Set (fromList)
import Euler.EulerType (EulerType)

euler29 :: EulerType
euler29 = length $ fromList [x ^ y | x <- [2 .. 100], y <- [2 .. 100]]
