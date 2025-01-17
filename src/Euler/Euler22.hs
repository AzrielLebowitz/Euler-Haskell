module Euler.Euler22
  ( euler22,
  )
where

import Data.Char (ord)
import Data.List (sort)
import Euler.EulerType (EulerType)
import Utils (convertIO, getFile)

names :: [String]
names = sort $ read $ "[" ++ convertIO (getFile "src/Euler/0022_names.txt") ++ "]"

score :: String -> Int -> Int
score w i = (i *) . sum . map (\c -> ord c - ord 'A' + 1) $ w

euler22 :: EulerType
euler22 = sum $ zipWith score names [1 ..]
