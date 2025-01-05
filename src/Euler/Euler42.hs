module Euler.Euler42
  ( euler42,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (isTriagulerNumber, wordValue)
import Utils (convertIO, getFile)

wordList :: [String]
wordList = read $ "[" ++ convertIO (getFile "src/Euler/0042_words.txt") ++ "]"

euler42 :: EulerType
euler42 = length $ filter isTriagulerNumber $ map wordValue wordList
