module Euler.Euler38
  ( euler38,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (getPandigitalOfMultiply, isPandigital)

euler38 :: EulerType
euler38 = maximum . filter isPandigital . map read $ [getPandigitalOfMultiply x 1 [] | x <- [2 .. 9999]]
