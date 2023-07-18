module Euler.Euler27 (
        euler27
) where
import Euler.EulerType (EulerType)
import MathUtils (quadratic, isPrime)
import Data.Ord (comparing)
import Data.List (maximumBy)


euler27 :: EulerType
euler27 = fst $ maximumBy (comparing snd) [(a * b, length $ takeWhile isPrime [quadratic a b n | n <- [0..]]) | a <- [-999..999], b <- [-1000..1000]]
