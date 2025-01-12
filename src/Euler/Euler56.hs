module Euler.Euler56
  ( euler56,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (sumDigits)

euler56 :: EulerType
euler56 = fromInteger $ maximum [(sumDigits . toInteger) (a ^ b) | a <- [1 .. 100], b <- [1 .. 100]]
