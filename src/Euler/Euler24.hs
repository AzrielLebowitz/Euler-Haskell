module Euler.Euler24
  ( euler24,
  )
where

import Data.List (delete)
import Euler.EulerType (EulerType)
import MathUtils (factorial)

nthPermutation n xs = go n xs [] where go 0 ys acc = acc ++ ys; go k ys acc = let (q, r) = k `divMod` factorial (length ys - 1) in go r (delete (ys !! q) ys) (acc ++ [ys !! q])

euler24 :: EulerType
euler24 = read $ nthPermutation 999999 "0123456789"
