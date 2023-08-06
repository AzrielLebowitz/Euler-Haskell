module Euler.Euler39 (
        euler39
) where
import Euler.EulerType (EulerType)
import MathUtils (countRightAngleTriangles)
import Data.List (maximumBy)
import Data.Ord (comparing)


euler39 :: EulerType
euler39 = fst $ maximumBy (comparing snd) [(x, countRightAngleTriangles x) | x <- [1..1000]]
