module Euler.Euler34
  ( euler34,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (isCuriousNumber)

euler34 :: EulerType
euler34 = sum $ filter isCuriousNumber [3 .. 2540160]
