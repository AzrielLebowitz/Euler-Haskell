module Euler.Euler14 (
        euler14
) where
import Euler.EulerType (EulerType)
import MathUtils (collatzLength)
import Data.Ord (comparing)
import Data.List (maximumBy)


euler14 :: EulerType
euler14 = fst $ maximumBy (comparing snd) [(n, collatzLength n) | n <- [1..1000000]]
