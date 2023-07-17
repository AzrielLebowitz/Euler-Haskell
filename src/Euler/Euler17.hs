module Euler.Euler17 (
        euler17
) where
import Euler.EulerType (EulerType)

-- I failed this one


{- nums :: [(Int, String)]
nums = [(1000, "thousand"), (100, "hundred"), (20, "twenty"), (30, "thirty"), (40, "forty"), (50, "fifty"), (60, "sixty"), (70, "seventy"), (80, "eighty"), (90, "ninety")]
    ++ [(10, "ten"), (11, "eleven"), (12, "twelve"), (13, "thirteen"), (14, "fourteen"), (15, "fifteen"), (16, "sixteen"), (17, "seventeen"), (18, "eighteen"), (19, "nineteen")]
    ++ [(1, ""), (2, "one"), (3, "two"), (4, "three"), (5, "four"), (6, "five"), (7, "six"), (8, "seven"), (9, "eight")]

digitWords :: Int -> [(Int, String)]
digitWords x = [(x `div` 10^i `mod` 10, if i == 2 && x `mod` 100 /= 0 then "hundred" else snd (nums !! ((x `div` 10^i `mod` 10) - 1))) | i <- [2, 1, 0]]

numberToWords :: Int -> String
numberToWords x = if x == 0 then "zero" else unwords [snd (nums !! (n-1)) | (n, w) <- [(x `div` 10^i `mod` 10, if i == 2 && x `mod` 100 /= 0 then "hundred" else w) | i <- [2, 1, 0]], n /= 0]

isAlpha :: Char -> Bool
isAlpha = (`elem` ['a'..'z'] ++ ['A'..'Z']) -}

euler17 :: EulerType
-- euler17 = sum $ map ((length . filter isAlpha) . numberToWords) [1..1000]
euler17 = -1

