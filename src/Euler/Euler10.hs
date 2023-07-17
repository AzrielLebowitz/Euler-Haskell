module Euler.Euler10 (
        euler10
) where
import Euler.EulerType (EulerType)
import MathUtils (primes)


euler10 :: EulerType
euler10 = sum $ takeWhile(<2000000) primes
