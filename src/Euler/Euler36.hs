module Euler.Euler36 (
        euler36
) where
import Euler.EulerType (EulerType)
import MathUtils (isPalindrome, isBinaryPalindrome)


euler36 :: EulerType
euler36 = sum . filter (\x -> isPalindrome x && isBinaryPalindrome x) $ takeWhile(<1000000) [1,3..]
