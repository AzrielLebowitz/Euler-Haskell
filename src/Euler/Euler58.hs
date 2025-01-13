module Euler.Euler58
  ( euler58,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (diagonalsGroups, isPrime)

euler58 :: EulerType
euler58 = fst (head . dropWhile (\(x, y) -> x < y * 10) . zip [5, 9 ..] . drop 1 . scanl (+) 0 $ map (length . filter isPrime . take 4) diagonalsGroups) `div` 2 + 1
