module MathUtils 
  ( factors
    , isPrime
    , primes
    , primeFactors
    , allPrimeFactors
    , fibs
    , largeFibs
    , fibsWithIndex
    , isCircularPrime
    , circularPrimes
    , rotate
    , reverseInt
    , isPalindrome
    , isPythagorean
    , triangularNum
    , generateTriangularNum
    , sumDigits
    , collatzLength
    , collatzSequence
    , sumfactors
    , isAmicable
    , isAbundant
    , abundantNumbers
    , canBeWrittenWithTwo
    , cannotBeWrittenWithTwoAbundantNums
    , countDigits
    , findCycle
    , cycleLength
    , quadratic
    , squars
    , sumExistsInLists
    , isSquare
    , goldbachsOtherConjecture
    , wordValue
    , isTriagulerNumber
    , isPandigital
    , pandigitals
    , truncateRight
    , truncateLeft
    , isTruncatablePrime
    , isOddDigit
    , primesWithOddDigits
) where
  
import Data.List(nub, elemIndex, sort, permutations, inits, tails)
import Data.Char (ord, intToDigit)

factors :: Int -> [Int]
factors n = nub $ [x | x <- [1..floor (sqrt (fromIntegral n))], mod n x == 0] >>= (\x -> [x, div n x])

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

largeFibs :: [Integer]
largeFibs = 0 : 1 : zipWith (+) largeFibs (tail largeFibs)

fibsWithIndex :: [(Integer, Int)]
fibsWithIndex = zip largeFibs [0..]

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

sumDigits :: Integer -> Integer
sumDigits 0 = 0
sumDigits x = (x `mod` 10) + sumDigits (x `div` 10)

collatzLength :: Int -> Int
collatzLength = length . collatzSequence

collatzSequence :: Int -> [Int]
collatzSequence 1 = [1]
collatzSequence n = if even n then n : collatzSequence (n `div` 2) else n : collatzSequence (3 * n + 1)

sumfactors :: Int -> Int
sumfactors n = sum(factors n) - n

isAmicable :: Int ->  Int -> Bool
isAmicable i j = i == sumfactors j && j == sumfactors i && i /= j

isAbundant:: Int -> Bool
isAbundant num = num < sumfactors num

abundantNumbers :: [Int]
abundantNumbers = filter isAbundant [1..28123]

canBeWrittenWithTwo :: [Int] -> Int -> Bool
canBeWrittenWithTwo lst num = any (\x -> (num - x) `elem` lst) lst

cannotBeWrittenWithTwoAbundantNums :: Int -> Bool
cannotBeWrittenWithTwoAbundantNums num = not $ any (\x -> isAbundant $ num-x) (takeWhile(<= num `div` 2) abundantNumbers)

countDigits :: Int -> Int
countDigits = length . show

findCycle :: Int -> Int -> [Int] -> Int
findCycle _ 0 _ = 0
findCycle d n rs = maybe (findCycle d (10 * r) (r : rs)) (+1) (elemIndex r rs) where r = n `rem` d

cycleLength :: Int -> Int
cycleLength d = findCycle d 1 []

quadratic :: Int -> Int -> Int -> Int
quadratic a b n = n * n + a * n + b

squars :: [Int]
squars = [x^2 | x <- [1..]]

sumExistsInLists :: Int -> [Int] -> [Int] -> Bool
sumExistsInLists num xs ys = any (\x -> any (\y -> x + y == num) (takeWhile (<num) ys)) (takeWhile (<num) xs)

isSquare :: Int -> Bool
isSquare x = let root = floor $ sqrt $ fromIntegral x in root*root == x

goldbachsOtherConjecture :: Int -> Bool
goldbachsOtherConjecture n = any (\p -> isSquare ((n - p) `div` 2)) $ takeWhile (< n) primes

wordValue :: String -> Int
wordValue = sum . map (\c -> ord c - 64)

isTriagulerNumber :: Int -> Bool
isTriagulerNumber n = n `elem` takeWhile(<=n) generateTriangularNum

isPandigital :: Int -> Bool
isPandigital n = (sort . show $ n) == map intToDigit [1..length . nub . show $ n]

pandigitals :: [Int]
pandigitals = map read $ permutations "1234567"

truncateRight :: Int -> [Int]
truncateRight = init . map read . tails . show

truncateLeft :: Int -> [Int]
truncateLeft = tail . map read . inits . show

isTruncatablePrime :: Int -> Bool
isTruncatablePrime p = p > 10 && isPrime p && all isPrime (truncateLeft p) && all isPrime (truncateRight p)

isOddDigit :: Char -> Bool
isOddDigit d = d `elem` "13579"

primesWithOddDigits :: [Int]
primesWithOddDigits = filter (all isOddDigit . show) primes
