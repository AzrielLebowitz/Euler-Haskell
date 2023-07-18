module Euler.Euler21 (
        euler21
) where
import Euler.EulerType (EulerType)
import MathUtils (isAmicable, sumfactors)


euler21 :: EulerType
euler21 = sum $ filter (\x -> isAmicable x (sumfactors x) && sumfactors x < 10000) [1..10000]
