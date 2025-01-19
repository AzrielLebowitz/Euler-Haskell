module MathUtils
  ( factors,
    isPrime,
    primes,
    primeFactors,
    allPrimeFactors,
    fibs,
    largeFibs,
    fibsWithIndex,
    isCircularPrime,
    circularPrimes,
    rotate,
    reverseInt,
    isPalindrome,
    isPythagorean,
    triangularNum,
    generateTriangularNum,
    sumDigits,
    collatzLength,
    collatzSequence,
    sumfactors,
    isAmicable,
    isAbundant,
    abundantNumbers,
    canBeWrittenWithTwo,
    cannotBeWrittenWithTwoAbundantNums,
    countDigits,
    findCycle,
    cycleLength,
    quadratic,
    squars,
    sumExistsInLists,
    isSquare,
    goldbachsOtherConjecture,
    wordValue,
    isTriagulerNumber,
    isPandigital,
    pandigitals,
    truncateRight,
    truncateLeft,
    isTruncatablePrime,
    isDigitInTruncablePrime,
    primesWithOddDigits,
    makeBinary,
    isBinaryPalindrome,
    countRightAngleTriangles,
    splitNthDigit,
    splitNthDigit2,
    nDigitSum,
    factorial,
    digitsFactorialSum,
    isCuriousNumber,
    getPandigitalOfMultiply,
    pentagonalNum,
    generatePentagonal,
    isPentagonal,
    sameDigits,
    possibleCombos,
    diagonalsGroups,
    cubes,
    isCube,
    countCubePermutations,
    countCubePermutations2,
    isCube2,
    sumDigitFactorials,
    digitFactorialChain,
  )
where

import Data.Char (digitToInt, intToDigit, ord)
import qualified Data.IntMap as IM
import Data.List (elemIndex, inits, nub, permutations, sort, tails)
import Data.Set (fromAscList, fromDistinctAscList, fromList, member)
import Numeric (showIntAtBase)

factors :: Int -> [Int]
factors n = nub $ [x | x <- [1 .. floor (sqrt (fromIntegral n))], mod n x == 0] >>= (\x -> [x, div n x])

isPrime :: Int -> Bool
isPrime n = n > 1 && all (\x -> n `mod` x /= 0) [2 .. floor (sqrt (fromIntegral n))]

primes :: [Int]
primes = 2 : filter isPrime [3, 5 ..]

primeFactors :: Int -> [(Int, Int)]
primeFactors num = [(x, last $ takeWhile (\n -> (x ^ n) `elem` factors num) [1 ..]) | x <- filter isPrime $ factors num]

allPrimeFactors :: Int -> [Int]
allPrimeFactors num = [x | x <- takeWhile (\x -> x * x <= num) primes, num `mod` x == 0]

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (drop 1 fibs)

largeFibs :: [Integer]
largeFibs = 0 : 1 : zipWith (+) largeFibs (drop 1 largeFibs)

fibsWithIndex :: [(Integer, Int)]
fibsWithIndex = zip largeFibs [0 ..]

isCircularPrime :: Int -> Bool
isCircularPrime p = all isPrime (circularPrimes p)

circularPrimes :: Int -> [Int]
circularPrimes p = map read (rotate (show p))

rotate :: [a] -> [[a]]
rotate xs = take (length xs) (iterate (\(y : ys) -> ys ++ [y]) xs)

reverseInt :: Int -> Int
reverseInt = read . reverse . show

isPalindrome :: Int -> Bool
isPalindrome num = num == reverseInt num

isPythagorean :: (Int, Int, Int) -> Bool
isPythagorean (a, b, c) = a ^ 2 + b ^ 2 == c ^ 2

triangularNum :: Int -> Int
triangularNum n = (n * (n + 1)) `div` 2

generateTriangularNum :: [Int]
generateTriangularNum = scanl1 (+) [1 ..]

sumDigits :: Integer -> Integer
sumDigits 0 = 0
sumDigits x = (x `mod` 10) + sumDigits (x `div` 10)

collatzLength :: Int -> Int
collatzLength = length . collatzSequence

collatzSequence :: Int -> [Int]
collatzSequence 1 = [1]
collatzSequence n = if even n then n : collatzSequence (n `div` 2) else n : collatzSequence (3 * n + 1)

sumfactors :: Int -> Int
sumfactors n = sum (factors n) - n

isAmicable :: Int -> Int -> Bool
isAmicable i j = i == sumfactors j && j == sumfactors i && i /= j

isAbundant :: Int -> Bool
isAbundant num = num < sumfactors num

abundantNumbers :: [Int]
abundantNumbers = filter isAbundant [1 .. 28123]

canBeWrittenWithTwo :: [Int] -> Int -> Bool
canBeWrittenWithTwo lst num = any (\x -> (num - x) `elem` lst) lst

cannotBeWrittenWithTwoAbundantNums :: Int -> Bool
cannotBeWrittenWithTwoAbundantNums num = not $ any (\x -> isAbundant $ num - x) (takeWhile (<= num `div` 2) abundantNumbers)

countDigits :: Int -> Int
countDigits = length . show

findCycle :: Int -> Int -> [Int] -> Int
findCycle _ 0 _ = 0
findCycle d n rs = maybe (findCycle d (10 * r) (r : rs)) (+ 1) (elemIndex r rs) where r = n `rem` d

cycleLength :: Int -> Int
cycleLength d = findCycle d 1 []

quadratic :: Int -> Int -> Int -> Int
quadratic a b n = n * n + a * n + b

squars :: [Int]
squars = [x ^ 2 | x <- [1 ..]]

sumExistsInLists :: Int -> [Int] -> [Int] -> Bool
sumExistsInLists num xs ys = any (\x -> any (\y -> x + y == num) (takeWhile (< num) ys)) (takeWhile (< num) xs)

isSquare :: Int -> Bool
isSquare x = let root = floor $ sqrt $ fromIntegral x in root * root == x

goldbachsOtherConjecture :: Int -> Bool
goldbachsOtherConjecture n = any (\p -> isSquare ((n - p) `div` 2)) $ takeWhile (< n) primes

wordValue :: String -> Int
wordValue = sum . map (\c -> ord c - 64)

isTriagulerNumber :: Int -> Bool
isTriagulerNumber n = n `elem` takeWhile (<= n) generateTriangularNum

isPandigital :: Int -> Bool
isPandigital n = (sort . show $ n) == map intToDigit [1 .. length . nub . show $ n]

pandigitals :: [Int]
pandigitals = map read $ permutations "1234567"

truncateRight :: Int -> [Int]
truncateRight = init . map read . tails . show

truncateLeft :: Int -> [Int]
truncateLeft = drop 1 . map read . inits . show

isTruncatablePrime :: Int -> Bool
isTruncatablePrime p = p > 10 && isPrime p && all isPrime (truncateLeft p) && all isPrime (truncateRight p)

isDigitInTruncablePrime :: Char -> Bool
isDigitInTruncablePrime d = d `elem` "123579"

primesWithOddDigits :: [Int]
primesWithOddDigits = filter (all isDigitInTruncablePrime . show) primes

makeBinary :: Int -> [Char]
makeBinary n = showIntAtBase 2 intToDigit n ""

isBinaryPalindrome :: Int -> Bool
isBinaryPalindrome n = reverse (makeBinary n) == makeBinary n

countRightAngleTriangles :: Int -> Int
countRightAngleTriangles n = length [() | a <- [1 .. n], b <- [a .. n], let c = n - a - b, isPythagorean (a, b, c)]

-- nthDigit :: Int -> Int
-- nthDigit n = concat [show n | n <- [1..]]
--
splitNthDigit :: String -> Int
splitNthDigit = (\(x1, x2) -> read x1 * read x2) . splitAt 1

splitNthDigit2 :: String -> Int
splitNthDigit2 = (\(x1, x2) -> read x1 * read x2) . splitAt 2

nDigitSum :: String -> Bool
nDigitSum = (\(x1, x2) -> read x2 == splitNthDigit x1 || read x2 == splitNthDigit2 x1) . splitAt 5

factorial :: Int -> Int
factorial num = product [2 .. num]

bigFactorial :: Integer -> Integer
bigFactorial num = product [2 .. num]

digitsFactorialSum :: Int -> Int
digitsFactorialSum 0 = 0
digitsFactorialSum num = factorial (num `mod` 10) + digitsFactorialSum (num `div` 10)

isCuriousNumber :: Int -> Bool
isCuriousNumber num = num == digitsFactorialSum num

getPandigitalOfMultiply :: Int -> Int -> [String] -> String
getPandigitalOfMultiply num i ret = if length (concat ret) >= 9 then concat ret else getPandigitalOfMultiply num (i + 1) (ret ++ [show (num * i)])

pentagonalNum :: Int -> Int
pentagonalNum num = num * (3 * num - 1) `div` 2

generatePentagonal :: [Int]
generatePentagonal = [pentagonalNum x | x <- [1 .. 2500]] -- the answer is at 2166

isPentagonal :: Int -> Bool
isPentagonal num = num `member` fromAscList generatePentagonal

sameDigits :: Int -> Int -> Bool
sameDigits a b = sort (show a) == sort (show b)

possibleCombos :: Integer -> Integer -> Integer
possibleCombos n r = bigFactorial n `div` (bigFactorial r * bigFactorial (n - r))

diagonalsGroups :: [[Int]]
diagonalsGroups = [[n ^ 2 - x * (n - 1) | x <- [0 .. 3]] | n <- [3, 5 ..]]

cubes :: [Int]
cubes = [n ^ 3 | n <- [1 .. 1000]]

isCube :: Int -> Bool
isCube n = n >= 0 && (round (fromIntegral n ** (1 / 3)) ^ 3 == n)

isCube2 :: Int -> Bool
isCube2 n = n `member` fromDistinctAscList cubes

countCubePermutations :: String -> Int
countCubePermutations s = length . fromList . filter isCube $ map read $ permutations s

countCubePermutations2 :: String -> Int
countCubePermutations2 s = length . fromList . filter isCube2 $ map read $ permutations s

factorialMemo :: [Int]
factorialMemo = map factorial [0 .. 9]

sumDigitFactorials :: Int -> Int
sumDigitFactorials 0 = 0
sumDigitFactorials n = (factorialMemo !! (n `mod` 10)) + sumDigitFactorials (n `div` 10)

digitFactorialChain :: Int -> IM.IntMap [Int] -> [Int]
digitFactorialChain n memo = if IM.member n memo then memo IM.! n else n : digitFactorialChain (sumDigitFactorials n) (IM.insert n [n] memo)
