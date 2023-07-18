module Euler.Euler25 (
        euler25
) where
import Euler.EulerType (EulerType)
import MathUtils (fibsWithIndex)


euler25 :: EulerType
euler25 = snd . head . dropWhile (\(f, _) -> f < 10^999) $ fibsWithIndex

