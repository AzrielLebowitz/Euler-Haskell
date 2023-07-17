module MathUtils 
  ( factors
    , isPrime
    , primes
    , primeFactors
    , allPrimeFactors
    , fibs
    , isCircularPrime
    , circularPrimes
    , rotate
    , reverseInt
    , isPalindrome
    , isPythagorean
    , triangularNum
    , generateTriangularNum
    , sumDigits
) where
  
import Data.List()

factors :: Int -> [Int]
factors n =  [x | x <- [1..floor (sqrt (fromIntegral n))], mod n x == 0] >>= (\x -> [x, div n x])

isPrime :: Int -> Bool
isPrime n = n > 1 && all (\x -> n `mod` x /= 0) [2..floor (sqrt (fromIntegral n))]

primes :: [Int]
primes = 2 : filter isPrime [3,5..]

primeFactors :: Int -> [(Int, Int)]
primeFactors num = [(x, last $ takeWhile (\n -> (x^n) `elem` factors num) [1..]) | x <- filter isPrime $ factors num]

allPrimeFactors :: Int -> [Int]
allPrimeFactors num = [x | x <- takeWhile (\x -> x * x <= num) primes, num `mod` x == 0]

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

isCircularPrime :: Int -> Bool
isCircularPrime p = all isPrime (circularPrimes p)

circularPrimes :: Int -> [Int]
circularPrimes p = map read (rotate (show p))

rotate :: [a] -> [[a]]
rotate xs = take (length xs) (iterate (\(y:ys) -> ys ++ [y]) xs)

reverseInt :: Int -> Int
reverseInt = read . reverse . show

isPalindrome :: Int -> Bool
isPalindrome num = num == reverseInt num

isPythagorean :: (Int, Int, Int) -> Bool
isPythagorean (a, b, c) = a^2 + b^2 == c^2

triangularNum :: Int -> Int
triangularNum n = (n * (n+1)) `div` 2

generateTriangularNum :: [Int]
generateTriangularNum = scanl1 (+) [1..]

sumDigits :: Int -> Int
sumDigits 0 = 0
sumDigits x = (x `mod` 10) + sumDigits (x `div` 10)
