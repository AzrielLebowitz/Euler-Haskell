module Euler.Euler15 (
        euler15
) where
import Euler.EulerType (EulerType)


euler15 :: EulerType
euler15 = iterate (scanl1 (+)) (repeat 1) !! 20 !! 20
