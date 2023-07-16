module Euler.Euler9 (
        euler9
) where
import Euler.EulerType (EulerType)
import MathUtils (isPythagorean)


euler9 :: EulerType
euler9 = product $ head [[a, b, c] | a <- [1..333], b <- [a+1..500], let c = 1000 - a - b, isPythagorean (a, b, c)]
