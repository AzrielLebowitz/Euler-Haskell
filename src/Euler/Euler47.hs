module Euler.Euler47
  ( euler47,
  )
where

import Data.List (tails)
import Euler.EulerType (EulerType)
import MathUtils (primeFactors)

isAns :: [Int] -> Bool
isAns arr = arr !! 3 - head arr == 4

euler47 :: EulerType
euler47 = head . head . filter isAns . map (take 4) . tails . map fst . filter (\x -> snd x == 4) $ zip [1 ..] $ map (length . primeFactors) [210 ..]
