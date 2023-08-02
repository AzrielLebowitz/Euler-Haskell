module Euler.Euler46 (
        euler46
) where
import Euler.EulerType (EulerType)
import MathUtils (goldbachsOtherConjecture, isPrime)


euler46 :: EulerType
euler46 = head [n | n <- [3,5..], not (goldbachsOtherConjecture n), not (isPrime n)]
