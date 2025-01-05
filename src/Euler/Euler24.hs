module Euler.Euler24
  ( euler24,
  )
where

import Data.List (permutations, sort)
import Euler.EulerType (EulerType)

euler24 :: EulerType
euler24 = read $ (!! 999999) . sort $ permutations ['0' .. '9']
