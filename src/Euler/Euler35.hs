module Euler.Euler35 (
        euler35
) where

  
import MathUtils(primes, isCircularPrime)
import Euler.EulerType (EulerType)

euler35 :: EulerType
euler35 = length $  filter isCircularPrime $ takeWhile (<1000000) primes 
