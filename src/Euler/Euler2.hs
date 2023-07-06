module Euler.Euler2 (euler2) where

import MathUtils(fibs)
import Data.List()

sumOfEvenFibUnder :: Int -> Int
sumOfEvenFibUnder untilMax = sum . filter (even) $ takeWhile (<untilMax) fibs

euler2 :: Int
euler2 = sumOfEvenFibUnder 4000000