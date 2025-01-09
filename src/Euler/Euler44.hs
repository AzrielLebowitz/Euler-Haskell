module Euler.Euler44
  ( euler44,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (generatePentagonal, isPentagonal)

euler44 :: EulerType
euler44 = head $ filter isPentagonal [a - b | a <- generatePentagonal, b <- takeWhile (< a) generatePentagonal, isPentagonal (a + b)]
