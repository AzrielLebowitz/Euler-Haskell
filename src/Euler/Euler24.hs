module Euler.Euler24 (
        euler24
) where
import Euler.EulerType (EulerType)
import Data.List (permutations, sort)


euler24 :: EulerType
euler24 =  read $ (!! 999999) . sort $ permutations ['0'..'9'] :: Int
