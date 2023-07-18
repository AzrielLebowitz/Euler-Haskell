module Euler.Euler29 (
        euler29
) where
import Euler.EulerType (EulerType)
import Data.List (nub)


euler29 :: EulerType
euler29 = length $ nub [x^y | x <- [2..100], y <- [2..100]]
