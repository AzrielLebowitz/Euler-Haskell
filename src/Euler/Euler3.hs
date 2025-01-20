module Euler.Euler3 (euler3) where

import Data.List (maximumBy)
import Data.Ord (comparing)
import MathUtils (primeFactors)

num :: Int
num = 600851475143

euler3 :: Int
euler3 = fst . maximumBy (comparing fst) $ primeFactors num
