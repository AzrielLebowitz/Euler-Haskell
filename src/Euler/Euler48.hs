module Euler.Euler48 (
        euler48
) where
import Euler.EulerType (EulerType)


solution :: Integer
solution = sum [x ^ x | x <- [1..1000]]  `rem` 10000000000

euler48 :: EulerType
euler48 = fromIntegral solution :: Int
