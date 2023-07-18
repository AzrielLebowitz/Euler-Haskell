module Euler.Euler20 (
        euler20
) where
import Euler.EulerType (EulerType)
import Data.Char (digitToInt)


euler20 :: EulerType
euler20 = sum $ map digitToInt $ show $ product [1..100]
