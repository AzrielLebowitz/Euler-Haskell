module Euler.Euler89
  ( euler89,
  )
where

import Data.List (isPrefixOf)
import Euler.EulerType (EulerType)
import Utils (convertIO, getFile)

numList :: [String]
numList = lines . convertIO $ getFile "src/Euler/0089_roman.txt"

shortsList :: [(String, String)]
shortsList = [("DCCCC", "CM"), ("CCCC", "CD"), ("LXXXX", "XC"), ("XXXX", "XL"), ("VIIII", "IX"), ("IIII", "IV")]

replace :: String -> (String, String) -> String
replace str (t, r) = if t `isPrefixOf` str then r ++ replace (drop (length t) str) (t, r) else case str of [] -> []; (x : xs) -> x : replace xs (t, r)

replaceAll :: String -> String
replaceAll str = foldl replace str shortsList

euler89 :: EulerType
euler89 = sum (map length numList) - sum (map (length . replaceAll) numList)
