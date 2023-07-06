module Euler.Euler1 ( 
       euler1
        ) where
  
import Data.List()

sumOfArrayOfMulti :: Int -> Int
sumOfArrayOfMulti untilMax = sum [x | x <- [1..untilMax], x `mod` 3 == 0 || x `mod` 5 == 0]

euler1 :: Int
euler1 = sumOfArrayOfMulti 1000
