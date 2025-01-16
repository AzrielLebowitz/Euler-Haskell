module Euler.Euler71
  ( euler71,
  )
where

import Data.List (maximumBy)
import Data.Ord (comparing)
import Euler.EulerType (EulerType)

euler71 :: EulerType
euler71 = snd $ maximumBy (comparing fst) [(c, a) | b <- [1 .. 1000000], let a = round (fromIntegral b * 3 / 7 - 1), let c = fromIntegral a / fromIntegral b]
