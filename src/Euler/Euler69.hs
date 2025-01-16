module Euler.Euler69
  ( euler69,
  )
where

import Data.List (inits)
import Euler.EulerType (EulerType)
import MathUtils (primes)

euler69 :: EulerType
euler69 = last . takeWhile (< 1000000) . map product . tail $ inits $ take 20 primes
