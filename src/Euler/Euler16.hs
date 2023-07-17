module Euler.Euler16 (
        euler16
) where
import Euler.EulerType (EulerType)
import MathUtils (sumDigits)


euler16 :: EulerType
euler16 = fromInteger (sumDigits(2 ^ 1000))
