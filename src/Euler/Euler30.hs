module Euler.Euler30 (
        euler30
) where
import Euler.EulerType (EulerType)
import Data.Char (digitToInt)

limit :: Int
limit = snd $ head $ dropWhile (\(a,b) -> a > b) $ zip (map (9^5*) [1..]) (map (10^) [1..])

fifth :: Int -> Int
fifth = sum . map ((^5) . digitToInt) . show

euler30 :: EulerType
euler30 = sum $ filter (\n -> n == fifth n) [2..limit]
