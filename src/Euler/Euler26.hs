module Euler.Euler26 (
        euler26
) where
import Euler.EulerType (EulerType)
import Data.Function (on)
import MathUtils (cycleLength)
import Data.List (maximumBy)


euler26 :: EulerType
euler26 = fst $ maximumBy (compare `on` snd) [(d, cycleLength d) | d <- [1..999]]
