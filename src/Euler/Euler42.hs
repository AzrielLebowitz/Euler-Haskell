module Euler.Euler42 (
        euler42
) where
import Euler.EulerType (EulerType)
import Utils (getFile, convertIO)
import MathUtils (isTriagulerNumber, wordValue)


wordList :: [String]
wordList = read $ "[" ++ convertIO(getFile "src\\files\\0042_words.txt") ++ "]"


euler42 :: EulerType
euler42 = length $ filter isTriagulerNumber $ map wordValue wordList
