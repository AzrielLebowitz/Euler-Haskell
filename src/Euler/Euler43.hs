module Euler.Euler43
  ( euler43,
  )
where

import Data.List (permutations)
import Euler.EulerType (EulerType)
import MathUtils (primes)

prime :: Int -> Int
prime num = primes !! (num - 1)

isDivisible :: Int -> String -> Bool
isDivisible num s = read (take 3 $ drop num s) `mod` prime num == 0

isFullPandigital :: String -> Bool
isFullPandigital numStr = all (`isDivisible` numStr) [7, 6 .. 1] -- in reverse because of my need for speeeeeeed

euler43 :: EulerType
euler43 = sum . map read . filter isFullPandigital $ permutations "1234567890"
