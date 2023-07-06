module Euler.Euler35 (euler35) where

  
import MathUtils(primes, isCircularPrime)
euler35 :: Int
euler35 = length $  filter isCircularPrime $ takeWhile (<1000000) primes 