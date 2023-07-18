module Euler.Euler28 (
        euler28
) where
import Euler.EulerType (EulerType)


euler28 :: EulerType
euler28 = sum (map (\n -> 4*(n-2)^2+10*(n-1)) [3,5..1001]) + 1
