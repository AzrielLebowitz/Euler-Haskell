module Euler.Euler37 (
        euler37
) where
import Euler.EulerType (EulerType)
import MathUtils (isTruncatablePrime, primesWithOddDigits)


euler37 :: EulerType
euler37 = sum $ take 10 $ filter isTruncatablePrime primesWithOddDigits
