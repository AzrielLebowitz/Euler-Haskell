module Euler.Euler41 (
        euler41
) where
import Euler.EulerType (EulerType)
import MathUtils (isPrime, pandigitals)


euler41 :: EulerType
euler41 = maximum $ filter isPrime pandigitals
