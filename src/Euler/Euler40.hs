module Euler.Euler40
  ( euler40,
  )
where

import Data.Char (digitToInt)
import Euler.EulerType (EulerType)

euler40 :: EulerType
euler40 = product . map digitToInt $ [concatMap show [1 ..] !! (10 ^ n - 1) | n <- [0 .. 6]]
