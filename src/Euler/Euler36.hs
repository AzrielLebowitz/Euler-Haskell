module Euler.Euler36
  ( euler36,
  )
where

import Euler.EulerType (EulerType)
import MathUtils (isBinaryPalindrome, isPalindrome)

euler36 :: EulerType
euler36 = sum . filter (\x -> isPalindrome (show x) && isBinaryPalindrome x) $ [1, 3 .. 999999]
