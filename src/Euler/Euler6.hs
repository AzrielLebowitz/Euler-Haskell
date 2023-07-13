module Euler.Euler6 (
        euler6
) where
import Euler.EulerType (EulerType)


euler6 :: EulerType
euler6 = sum [1..100] ^ 2 - sum [x ^ 2 | x <- [1..100]]
