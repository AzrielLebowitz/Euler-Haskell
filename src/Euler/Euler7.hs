module Euler.Euler7 (euler7) where

import MathUtils(primes)
euler7 :: Int
euler7 = last $ take 10001 primes

