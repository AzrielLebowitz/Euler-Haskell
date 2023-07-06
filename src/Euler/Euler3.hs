module Euler.Euler3 (euler3) where

import MathUtils(allPrimeFactors)

num :: Int
num = 600851475143


euler3 :: Int
euler3 = maximum $ allPrimeFactors num