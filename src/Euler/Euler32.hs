module Euler.Euler32
  ( euler32,
  )
where

import Data.List (permutations)
import qualified Data.Set as S
import Euler.EulerType (EulerType)
import MathUtils (nDigitSum)

euler32 :: EulerType
euler32 = sum . S.toList . S.fromList $ map (\x -> read x `mod` 10000) $ filter nDigitSum $ permutations "123456789"
