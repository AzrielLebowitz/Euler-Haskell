module Euler.Euler19
  ( euler19,
  )
where

import Euler.EulerType (EulerType)

leapYear :: [Int]
leapYear = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

nonLeapYear :: [Int]
nonLeapYear = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

euler19 :: EulerType
euler19 = length . filter (== 1) . map (`mod` 7) . scanl (+) 2 . concat $ replicate 3 nonLeapYear ++ replicate 24 (concat $ leapYear : replicate 3 nonLeapYear)
